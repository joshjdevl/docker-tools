#https://github.com/jpetazzo/nsenter
#http://jpetazzo.github.io/2014/06/23/docker-ssh-considered-evil/

containerid=$1
PID=$(sudo docker inspect --format {{.State.Pid}} ${containerid})
sudo ./nsenter --target $PID --mount --uts --ipc --net --pid
