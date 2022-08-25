module random 

import rand

pub fn get_random_uuid() string{
	return rand.uuid_v4()
}