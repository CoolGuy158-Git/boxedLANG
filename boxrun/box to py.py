import box_to_json as b2j

def to_py(code_json):
    py = ""
    for i in code_json:
        cmd = i['cmd']
        args = i['args']
        
        if cmd == "say":
            py = py + "print(" + args[0] + ")\n" + "time.sleep(" + str(args[1]) + ")\n"