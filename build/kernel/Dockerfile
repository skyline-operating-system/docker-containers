FROM archlinux:latest

RUN pacman -Syy
RUN pacman -S clang lld llvm meson nasm --noconfirm

COPY ./build.sh /build.sh

VOLUME ["/code/kernel"]
WORKDIR "/code/kernel"

ENV SKYLINE_ARCH=x86_64
ENV SKYLINE_SUB_ARCH=
ENV SKYLINE_BOOTLOADER=uefi

ENTRYPOINT [ "sh", "/build.sh" ]
