#pragma once

#include <utility>
#include <vector>
#include <array>

#include "matrix.hpp"

#include "opengl.hpp"
#include "glm/glm.hpp"

namespace cgra {


	class Bone {

	public:

		Bone(bool is_root_in, int id_in, std::string name_in, glm::vec3 direction_in, float length_in, glm::vec3 orientation_in) {
			is_root = is_root_in;
			id = id_in;
			name = std::move(name_in);
			direction = direction_in;
			length = length_in;
			orientation = orientation_in;
		}

		bool is_root;
//		Bone parent = NULL;
		std::vector<Bone> children;

		int id;
		std::string name;

		glm::vec3 direction;
		float length;

		glm::vec3 orientation;

		void connect_child(Bone child_bone);

		Bone get_bone(int bone_id);

		Bone get_bone(std::string bone_name);

		std::array<bool, 3> dof;
	};

}