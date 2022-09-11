FROM archlinux:latest

RUN pacman -Syy
RUN pacman -S clang lld llvm meson nasm --noconfirm

COPY ./build.sh /build.sh

VOLUME ["/code/kernel"]
WORKDIR "/code/kernel"

ENTRYPOINT [ "sh", "/build.sh" ]
