; =========================================================
; Game Engine Function: _Z26CreateTxdImageForVideoCardv
; Address            : 0x5D3A04 - 0x5D3A1A
; =========================================================

5D3A04:  PUSH            {R7,LR}
5D3A06:  MOV             R7, SP
5D3A08:  MOVS            R0, #0x10; unsigned int
5D3A0A:  BLX.W           _Znwj; operator new(uint)
5D3A0E:  MOVW            R1, #0x1388; int
5D3A12:  BLX.W           j__ZN10CDirectoryC2Ei; CDirectory::CDirectory(int)
5D3A16:  MOVS            R0, #1
5D3A18:  POP             {R7,PC}
