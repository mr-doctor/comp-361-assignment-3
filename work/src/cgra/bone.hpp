#pragma once

#include <vector>

#include "matrix.hpp"

#include "opengl.hpp"
#include "glm/glm.hpp"

namespace cgra {

	enum Axis {
		X, Y, Z
	};

	class Bone {
	public:

		bool is_root;
		Bone parent;
		std::vector<Bone> children;

		int id;

		std::string name;

		glm::vec3 direction;
		float length;

		Axis orientation;

	};
}