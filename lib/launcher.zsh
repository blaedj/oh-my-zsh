#!/bin/zsh

klaunch() {
    case $1 in
        "master" )
            ~/code/go/src/github.com/kolide/launcher/build/launcher \
                -root_directory ~/tmp/master \
                -hostname dibado.launcher.kolide.net:443 \
                -enroll_secret_path ~/tmp/secret \
                -debug  | tee ~/tmp/master.log ;;
        [0-9]*)
            ~/code/go/src/github.com/kolide/launcher/build/launcher \
                -root_directory $(mktemp -d) \
                -hostname $1.cloud.kolide.net:443 \
                -enroll_secret_path ~/tmp/secret \
                -debug | tee ~/tmp/$1.log ;;
        *)
            ~/code/go/src/github.com/kolide/launcher/build/launcher \
                -root_directory $(mktemp -d) \
                -hostname localhost:8800 \
                -enroll_secret_path ~/tmp/secret \
                -debug \
                --insecure \
                --insecure_grpc \
                2>&1 | tee ~/tmp/local.log ;;
    esac
}
