# Custom configurations for Unikraft backends of OCaml/Unikraft

This repository provides a simple template to create custom Unikraft
configurations to use with [OCaml/Unikraft].

[OCaml/Unikraft]: https://github.com/mirage/ocaml-unikraft

### Tips

1.  Clone [OCaml/Unikraft]

2.  Fine-tune your configuration(s), for instance, for the QEMU arm64 backend:

    ```
    $ make -C path/to/ocaml-unikraft/sources OCUKPLAT=qemu OCUKARCH=arm64 CONFIG=$PWD/qemu-arm64-musl.fullconfig menuconfig.unikraft
    ...
    ```

3.  Restrict to one specific configuration if needed

    For that, remove the other configurations and uncomment the conflict to the
    other configurations in `ocaml-unikraft-custom-configs.opam`.

4.  Commit your changes

5.  Install the result:

    ```
    opam pin add .
    ```

    This should recompile OCaml/Unikraft if it is installed. Otherwise install
    OCaml/Unikraft now.

---

This project has been created and is maintained by
[Tarides](https://tarides.com).
