
def execute_in_shell command
  result = `#{command}`
end

def list_dir path  
  result = `ls #{path}`
end