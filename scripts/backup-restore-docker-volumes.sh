# backup files from a docker volume into /tmp/backup.tar.gz
function docker-volume-backup-compressed() {
  docker run --rm -v /tmp:/backup --volumes-from "$1" debian:jessie tar -czvf /backup/backup.tar.gz "${@:2}"
}

# restore files from /tmp/backup.tar.gz into a docker volume
function docker-volume-restore-compressed() {
  docker run --rm -v /tmp:/backup --volumes-from "$1" debian:jessie tar -xzvf /backup/backup.tar.gz "${@:2}"
  echo "Double checking files..."
  docker run --rm -v /tmp:/backup --volumes-from "$1" debian:jessie ls -lh "${@:2}"
}

# backup files from a docker volume into /tmp/backup.tar
function docker-volume-backup() {
  docker run --rm -v /tmp:/backup --volumes-from "$1" busybox tar -cvf /backup/backup.tar "${@:2}"
}

# restore files from /tmp/backup.tar into a docker volume
function docker-volume-restore() {
  docker run --rm -v /tmp:/backup --volumes-from "$1" busybox tar -xvf /backup/backup.tar "${@:2}"
  echo "Double checking files..."
  docker run --rm -v /tmp:/backup --volumes-from "$1" busybox ls -lh "${@:2}"
}

