'''
Convert bilibili json subtitle to srt.
'''


import os.path
import json
import math

def sec2hms(secs):
    milisecond, second = math.modf(secs)
    milisecond = math.floor(milisecond*1000)
    second = int(second)
    minute = second // 60
    hour = minute // 60
    minute %= 60
    second %= 60
    return f'{hour:02d}:{minute:02d}:{second:02d},{milisecond:03d}'

def parse(bv_id, episode_n=1, cache_dir=r'D:\bilibili'):

    parant_dir = os.path.join(cache_dir, bv_id)
    output_dir = os.path.join(parant_dir, str(episode_n))

    sub_name = os.path.join(output_dir, 'sub', 'zh-cn.sub')
    if os.path.exists(sub_name) == False:
        sub_name = os.path.join(output_dir, 'sub', 'en-us.sub')
    output_name = os.path.join(output_dir, f'{bv_id}_{episode_n}_0.srt')

    # style_str = r'{\fs11\fnSegoe UI\bord2\shad2\1c&HFFFFFF&\4c&H000000&}'
    style_str = ''

    with open(sub_name, 'r', encoding='utf8') as sub_file,\
        open(output_name, 'w', encoding='utf8') as output_file:
        sub_str = sub_file.read()
        sub_strs = json.loads(sub_str)['body']
        k = 0
        for line in sub_strs:
            k += 1
            output_file.write(f'{k}\n{sec2hms(line["from"])} --> {sec2hms(line["to"])}\n{style_str}{line["content"]}\n\n')

if __name__ == '__main__':
    parse(bv_id='98201605', episode_n=1)
