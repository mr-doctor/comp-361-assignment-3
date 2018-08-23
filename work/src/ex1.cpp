#include <algorithm>
#include <cmath>
#include <iostream>
#include <stdexcept>
#include <zconf.h>
#include <cgra/bone.hpp>
#include <fstream>
#include <sstream>
#include <memory.h>
#include <iterator>
#include <array>
#include <algorithm>

#include "opengl.hpp"
#include "imgui.h"

#include "cgra/matrix.hpp"
#include "cgra/wavefront.hpp"

#include "ex1.hpp"

#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "glm/gtx/euler_angles.hpp"

void Application::init() {

	set_shaders(CGRA_SRCDIR "/res/shaders/simple.vs.glsl",CGRA_SRCDIR "/res/shaders/simple.fs.glsl");

    glm::mat4 viewMatrix(1);
    viewMatrix[3] = glm::vec4(0, 0, -10, 1);
    m_program.setViewMatrix(viewMatrix);

	glm::vec3 rotation(1.0f, 1.0f, 0.0f);
	m_rotationMatrix = glm::rotate(glm::mat4(1.0f), 45.0f, glm::vec3(rotation[0], rotation[1], rotation[2]));

	cgra::Bone bone = parse_asf(CGRA_SRCDIR "/res/models/test_bone_1.asf");
}

void print(std::string string) {
	std::cout << string << "\n" << std::flush;
}

void print(glm::vec3 vector) {
	std::cout << "[" << vector.x << ", " << vector.y << ", " << vector.z << "]" << std::endl;
}

void print(float f) {
	std::cout << f << std::endl;
}

void print(cgra::Bone bone) {
	std::cout << bone.name << " - " << bone.id << std::endl;
}

bool contains(const std::string &original, std::string inside) {
	return original.find(inside) != std::string::npos;
}

cgra::Bone Application::parse_asf(const char * filename) {

	std::ifstream asf_file(filename);

	if (!asf_file.is_open()) {
		print("failed");
		std::cerr << "File not open\n";
		return cgra::Bone(false, 0, "", glm::vec3(0), 0.0f, glm::vec3(0));
	}

	std::vector<cgra::Bone> all_bones;

	/*for (std::string line; std::getline(asf_file, line);) {
		std::istringstream line_parser(line);

		if (line == ":bonedata") {
			continue;
		}
	}*/

	std::string line;
	while (asf_file) {
		std::getline(asf_file, line);

		if (line == ":bonedata") {

			std::getline(asf_file, line);

			std::getline(asf_file, line);

			int id = parse_id(line);
			std::getline(asf_file, line);

			std::string name = parse_name(line);
			std::getline(asf_file, line);

			glm::vec3 direction = parse_direction(line);
			std::getline(asf_file, line);

			float length = parse_length(line);
			std::getline(asf_file, line);

			glm::vec3 axes = parse_axes(line);
			std::getline(asf_file, line);

			if (contains(line, "end")) {
				cgra::Bone new_bone = cgra::Bone((id == 1), id, name, direction, length, axes);
				all_bones.push_back(new_bone);
				continue;
			}

			std::array<bool, 3> dof = parse_dof(line);

			std::getline(asf_file, line);

			if (contains(line, "end")) {
				cgra::Bone new_bone = cgra::Bone((id == 1), id, name, direction, length, axes);
				new_bone.dof = dof;
				all_bones.push_back(new_bone);
				continue;
			}

			std::vector<glm::vec2> limits;
			std::istringstream iss(line);
			std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
			                                 std::istream_iterator<std::string>());

			std::string coord1 = results[1];
			std::string coord2 = results[2];

			coord1.erase(std::remove(coord1.begin(), coord1.end(), '('), coord1.end());
			coord2.erase(std::remove(coord2.begin(), coord2.end(), ')'), coord2.end());

			limits.emplace_back(std::atof(coord1.c_str()), std::atof(coord2.c_str()));

			std::getline(asf_file, line);

			while (!contains(line, "end")) {
				std::istringstream iss2(line);
				std::vector<std::string> results2((std::istream_iterator<std::string>(iss2)),
				                                  std::istream_iterator<std::string>());

				coord1 = results2[0];
				coord2 = results2[1];
				coord1.erase(std::remove(coord1.begin(), coord1.end(), '('), coord1.end());
				coord2.erase(std::remove(coord2.begin(), coord2.end(), ')'), coord2.end());

				limits.emplace_back(std::atof(coord1.c_str()), std::atof(coord2.c_str()));

				std::getline(asf_file, line);
			}

			if (contains(line, "end")) {
				cgra::Bone new_bone = cgra::Bone((id == 1), id, name, direction, length, axes);
				new_bone.dof = dof;
				all_bones.push_back(new_bone);
				continue;
			}

		} else if (line == ":hierarchy") {
			break;
		}
	} // endwhile

	for (auto bone : all_bones) {
		print(bone);
	}

	return cgra::Bone(false, 0, "", glm::vec3(0), 0.0f, glm::vec3(0));

}

int Application::parse_id(std::string line) {
	std::istringstream iss(line);
	std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
	                                 std::istream_iterator<std::string>());

	return std::stoi(results[results.size() - 1]);
}

std::string Application::parse_name(std::string line) {
	std::istringstream iss(line);
	std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
	                                 std::istream_iterator<std::string>());

	return results[results.size() - 1];
}

glm::vec3 Application::parse_direction(std::string line) {
	std::istringstream iss(line);
	std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
	                                 std::istream_iterator<std::string>());

	return glm::vec3(std::atof(results[1].c_str()), std::atof(results[2].c_str()), std::atof(results[3].c_str()));
}

glm::vec3 Application::parse_axes(std::string line) {
	std::istringstream iss(line);
	std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
	                                 std::istream_iterator<std::string>());
	return glm::vec3(std::atoi(results[1].c_str()), std::atoi(results[2].c_str()), std::atoi(results[3].c_str()));
}

float Application::parse_length(std::string line) {
	std::istringstream iss(line);
	std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
	                                 std::istream_iterator<std::string>());

	return static_cast<float>(std::atof(results[results.size() - 1].c_str()));
}

std::array<bool, 3> Application::parse_dof(std::string line) {
	std::istringstream iss(line);
	std::vector<std::string> results((std::istream_iterator<std::string>(iss)),
	                                 std::istream_iterator<std::string>());

	std::array<bool, 3> dof{};

	for (int i = 1; i < results.size(); i++) {
		if (results[i] == "rx") {
			dof[0] = true;
		} else if (results[i] == "ry") {
			dof[1] = true;
		} else if (results[i] == "rz") {
			dof[2] = true;
		}
	}

	return dof;
}


void Application::set_shaders(const char * vertex, const char * fragment) {
	   m_program = cgra::Program::load_program(vertex, fragment);
}

glm::vec3 calculate_normalised_vector(glm::vec2 mouse_pos, glm::vec2 view_port_size) {
	// Convert to model coordinates
	glm::vec3 direction{mouse_pos.x / view_port_size.x * 2 - 1,
	                    -(mouse_pos.y / view_port_size.y * 2 - 1),
	                    0};

	float length = glm::length(direction);

	// Normalise
	if (length <= 1.0) {
		direction.z = (float) sqrt(1 - length);
	} else {
		direction = glm::normalize(direction);
	}
	return direction;
}

void Application::apply_arcball(glm::vec2 current_mouse_XY) {

	glm::vec3 current_arcball_direction = calculate_normalised_vector(current_mouse_XY, m_viewportSize);
	glm::vec3 previous_arcball_direction = calculate_normalised_vector(m_mousePosition, m_viewportSize);

	float angle = previous_arcball_direction.x * current_arcball_direction.x +
	              previous_arcball_direction.y * current_arcball_direction.y +
	              previous_arcball_direction.z * current_arcball_direction.z;

	glm::vec3 normal = glm::cross(previous_arcball_direction, current_arcball_direction);
	// If there is nothing to rotate around
	if (glm::length(normal) == 0) {
		return;
	}
	// Invert the matrix for camera coordinates
	glm::mat4 arcball_rotate = glm::inverse(glm::rotate(glm::mat4(), angle / -50, normal));
	// Apply matrix
	arcball_rotate *= m_rotationMatrix;
	m_rotationMatrix = arcball_rotate;
}

void Application::drawScene() {
    // Calculate the aspect ratio of the viewport;
    // width / height
    float aspectRatio = m_viewportSize.x / m_viewportSize.y;
    // Calculate the projection matrix with a field-of-view of 45 degrees
    glm::mat4 projectionMatrix = glm::perspective(glm::radians(45.0f), aspectRatio, 0.1f, 100.0f);

    // Set the projection matrix
    m_program.setProjectionMatrix(projectionMatrix);
	glm::mat4 modelTransform = m_rotationMatrix * glm::mat4(1.0f);

    /************************************************************
     *                                                          *
     * Use `m_translation`, `m_scale`, and `m_rotationMatrix`   *
     * to create the  `modelTransform` matrix.                  *
     * The following glm functions will be useful:              *
     *    `glm::translate`                                      *
     *    `glm::scale`                                          *
     ************************************************************/

    m_program.setModelMatrix(modelTransform);

    // Draw the mesh
    m_mesh.draw();
}

void Application::doGUI() {
    ImGui::SetNextWindowSize(ImVec2(450, 450), ImGuiSetCond_FirstUseEver);
    ImGui::Begin("Shapes");

    // Example for rotation, use glm to create a a rotation
    // matrix from this vector
    static glm::vec3 rotation(0.0f, 0.0f, 0.0f);
    if (ImGui::InputFloat3("Rotation", &rotation[0])) {
        // This block is executed if the input changes
		m_rotationMatrix = glm::rotate(glm::mat4(1.0f), 45.0f, glm::vec3(rotation[0], rotation[1], rotation[2]));
    }

    ImGui::End();
}


// Input Handlers

void Application::onMouseButton(int button, int action, int) {
    if (button >=0 && button < 3) {
        // Set the 'down' state for the appropriate mouse button
        m_mouseButtonDown[button] = action == GLFW_PRESS;
    }
}

void Application::onCursorPos(double xpos, double ypos) {

    // Make a vec2 with the current mouse position
    glm::vec2 currentMousePosition(xpos, ypos);

    // Get the difference from the previous mouse position
//    glm::vec2 mousePositionDelta = currentMousePosition - m_mousePosition;

    if (m_mouseButtonDown[GLFW_MOUSE_BUTTON_LEFT]) {
	    apply_arcball(currentMousePosition);
    } else if (m_mouseButtonDown[GLFW_MOUSE_BUTTON_MIDDLE]) {

    } else if (m_mouseButtonDown[GLFW_MOUSE_BUTTON_RIGHT]) {

    }

    // Update the mouse position to the current one
    m_mousePosition = currentMousePosition;
}

void Application::onKey(int key, int scancode, int action, int mods) {
    // `(void)foo` suppresses unused variable warnings
    (void)key;
    (void)scancode;
    (void)action;
    (void)mods;
}

void Application::onScroll(double xoffset, double yoffset) {
    // `(void)foo` suppresses unused variable warnings
    (void)xoffset;
    (void)yoffset;
}
