; =========================================================
; Game Engine Function: sub_11F054
; Address            : 0x11F054 - 0x11F094
; =========================================================

11F054:  PUSH            {R7,LR}
11F056:  MOV             R7, SP
11F058:  LDR             R0, =(byte_263860 - 0x11F05E)
11F05A:  ADD             R0, PC; byte_263860
11F05C:  LDRB            R0, [R0]
11F05E:  DMB.W           ISH
11F062:  LSLS            R0, R0, #0x1F
11F064:  IT NE
11F066:  POPNE           {R7,PC}
11F068:  LDR             R0, =(byte_263860 - 0x11F06E)
11F06A:  ADD             R0, PC; byte_263860 ; __guard *
11F06C:  BLX             j___cxa_guard_acquire
11F070:  CBZ             R0, locret_11F092
11F072:  LDR             R1, =(unk_263848 - 0x11F07E)
11F074:  MOVS            R3, #0
11F076:  LDR             R0, =(sub_10CC6C+1 - 0x11F080)
11F078:  LDR             R2, =(off_22A540 - 0x11F082)
11F07A:  ADD             R1, PC; unk_263848 ; obj
11F07C:  ADD             R0, PC; sub_10CC6C ; lpfunc
11F07E:  ADD             R2, PC; off_22A540 ; lpdso_handle
11F080:  STR             R3, [R1,#(dword_263858 - 0x263848)]
11F082:  BLX             __cxa_atexit
11F086:  LDR             R0, =(byte_263860 - 0x11F08C)
11F088:  ADD             R0, PC; byte_263860
11F08A:  POP.W           {R7,LR}
11F08E:  B.W             sub_2242B0
11F092:  POP             {R7,PC}
