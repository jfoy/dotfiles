
def pad_str(length_with_padding): . as $str | [range(length_with_padding - length)] | map(" ") | join("") | $str + .;

def align_on(separator): map(split(separator) | map(tostring)) | (map(.[0]) | max_by(length) | length) as $max_region_length | map((.[0] | pad_str($max_region_length)) as $former | .[1] as $latter | $former + " " + separator + " " + $latter);
