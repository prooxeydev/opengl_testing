module models

struct RawModel {
pub:
	vao_id u32
	vertex_count int
}

pub fn create_raw_model(vao_id u32, vertex_count int) &RawModel {
	return &RawModel{vao_id, vertex_count}
}
