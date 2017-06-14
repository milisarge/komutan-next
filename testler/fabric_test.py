from fabric.api import *

def whoami():
	env.host_string = 'localhost'
	env.user = "root"
	env.password = "milis"
	with hide('output','running'):
		who = sudo('whoami')
	print(who) 

if __name__ == '__main__':
	whoami()