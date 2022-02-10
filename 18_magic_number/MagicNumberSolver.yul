// SPDX-License-Identifier: MIT

object "MagicNumberSolver" {
    code {
        // deploy runtime code
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))
    }
    object "runtime" {
        code {
            mstore(0x0, 42)
            return(0x0, 0x20)
        }
    }
}
