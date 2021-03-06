module entities

import glm

const (
	forward = 87
	backwards = 83
	left = 65
	right = 68
)

struct Camera {
pub mut:
	position []f32
	pitch f32
	yaw f32
	roll f32
}

pub fn create_camera(position []f32, pitch, yaw, roll f32) &Camera {
	return &Camera{
		position: position
		pitch: pitch
		yaw: yaw
		roll: roll
	}
}

pub fn (camera Camera) to_position() glm.Vec3 {
	return glm.vec3(camera.position[0], camera.position[1], camera.position[2])
}

pub fn (camera Camera) to_neg_position() glm.Vec3 {
	x := camera.position[0] * -1
	y := camera.position[1] * -1
	z := camera.position[2] * -1
	return glm.vec3(x, y, z)
}

pub fn (mut camera Camera) move(keys []bool) {
	if keys[forward] {
		camera.position[2] -= .02
	}
	if keys[backwards] {
		camera.position[2] += .02
	}
	if keys[right] {
		camera.position[0] += .02
	}
	if keys[left] {
		camera.position[0] -= .02
	}
}