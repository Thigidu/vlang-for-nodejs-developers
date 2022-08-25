module random

import rand

// `pub` is similar to node`s module.exports
pub fn get_random_num() ?u32 {
	return rand.u32_in_range(1,1000)
}
