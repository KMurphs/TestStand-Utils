

import json



def json_merge(src, dst):
    for key, value in src.items():
        if isinstance(value, dict):
            # get node or create one
            node = dst.setdefault(key, {})
            json_merge(value, node)
        else:
            dst[key] = value
    return dst
    


if __name__ == '__main__':
    print(json_merge('{"Test 1":"1"}', '{"Test 2":"2"}'))