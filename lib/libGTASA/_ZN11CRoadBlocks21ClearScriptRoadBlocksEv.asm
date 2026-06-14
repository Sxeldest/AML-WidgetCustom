; =========================================================
; Game Engine Function: _ZN11CRoadBlocks21ClearScriptRoadBlocksEv
; Address            : 0x324FE4 - 0x32502C
; =========================================================

324FE4:  LDR             R0, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x324FEC)
324FE6:  MOVS            R1, #0
324FE8:  ADD             R0, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
324FEA:  LDR             R0, [R0]; CRoadBlocks::aScriptRoadBlocks ...
324FEC:  STRB.W          R1, [R0,#(byte_7B75E0 - 0x7B75AC)]
324FF0:  STRB            R1, [R0,#(byte_7B75C4 - 0x7B75AC)]
324FF2:  STRB.W          R1, [R0,#(byte_7B75FC - 0x7B75AC)]
324FF6:  STRB.W          R1, [R0,#(byte_7B7618 - 0x7B75AC)]
324FFA:  STRB.W          R1, [R0,#(byte_7B7634 - 0x7B75AC)]
324FFE:  STRB.W          R1, [R0,#(byte_7B7650 - 0x7B75AC)]
325002:  STRB.W          R1, [R0,#(byte_7B766C - 0x7B75AC)]
325006:  STRB.W          R1, [R0,#(byte_7B7688 - 0x7B75AC)]
32500A:  STRB.W          R1, [R0,#(byte_7B76A4 - 0x7B75AC)]
32500E:  STRB.W          R1, [R0,#(byte_7B76C0 - 0x7B75AC)]
325012:  STRB.W          R1, [R0,#(byte_7B76DC - 0x7B75AC)]
325016:  STRB.W          R1, [R0,#(byte_7B76F8 - 0x7B75AC)]
32501A:  STRB.W          R1, [R0,#(byte_7B7714 - 0x7B75AC)]
32501E:  STRB.W          R1, [R0,#(byte_7B7730 - 0x7B75AC)]
325022:  STRB.W          R1, [R0,#(byte_7B774C - 0x7B75AC)]
325026:  STRB.W          R1, [R0,#(dword_7B7768 - 0x7B75AC)]
32502A:  BX              LR
