# 本脚本用来生成测试使用的coe文件
# coe文件格式
'''
memory_initialization_radix = 16;
memory_initialization_vector = 
00, 01, 02, 03, 04,07;
'''
# memory_initialization_radix ：定义数据类型，有效值为2,10,16
# memory_initialization_vector: 定义存储数据，可以用空格、逗号、回车符分隔


radix_hdr  = 'memory_initialization_radix = '
vector_hdr = 'memory_initialization_vector = '

def get_ouput(filepath, radix, vector:[]) -> None :
    global radix_hdr
    global vector_hdr
    if radix != 10 and radix != 16:
        print("the param [radix] is error -> not 16 or 10 !!!")
        return 
    with open( filepath, "w") as f:
        f.writelines( [ \
            radix_hdr + str( radix ) + ";" + "\n", \
            vector_hdr + "\n" \
        ] )

        for index in range(len(vector)-1):
            if radix == 16 : 
                f.write( '{:04X}'.format(vector[index]) + ', ')
            else:
                f.write( str(vector[index]) + ', ')
            if(index + 1) % 10 == 0:
                f.write("\n")
        if radix == 16 : 
            f.write( '{:04X}'.format(vector[-1]) + ';')
        elif radix == 10:
            f.write( str(vector[-1]) + ';')

def main():
    # 目前支持16进制和10进制
    radix = 16

    # 对数据范围进行说明
    number_start = 1
    number_step  = 1
    number_num   = 1024


    vector = []
    for i in range(number_num):
        vector.append(number_start)
        number_start += number_step
    
    get_ouput("./output/win_coe.coe",16,vector)


if __name__ == "__main__":
    main()












