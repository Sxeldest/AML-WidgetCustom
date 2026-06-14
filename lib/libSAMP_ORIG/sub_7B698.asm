; =========================================================
; Game Engine Function: sub_7B698
; Address            : 0x7B698 - 0x7B6F8
; =========================================================

7B698:  PUSH            {R4-R7,LR}
7B69A:  ADD             R7, SP, #0xC
7B69C:  PUSH.W          {R8}
7B6A0:  MOV             R5, R2
7B6A2:  MOV             R6, R1
7B6A4:  MOV             R4, R0
7B6A6:  BL              sub_7C360
7B6AA:  ADD.W           R8, R0, #0x54 ; 'T'
7B6AE:  MOV             R0, R8
7B6B0:  MOV             R1, R6
7B6B2:  MOV             R2, R5
7B6B4:  BL              sub_71C4C
7B6B8:  LDR             R0, =(_ZTV2UI - 0x7B6C6); `vtable for'UI ...
7B6BA:  MOVS            R1, #0
7B6BC:  MOV             R5, R4
7B6BE:  STRD.W          R1, R1, [R4,#0xAC]
7B6C2:  ADD             R0, PC; `vtable for'UI
7B6C4:  STR.W           R1, [R5,#0xA8]!
7B6C8:  ADD.W           R2, R0, #0x4C ; 'L'
7B6CC:  ADDS            R0, #8
7B6CE:  STR             R2, [R4,#0x54]
7B6D0:  STR             R0, [R4]
7B6D2:  MOV             R0, R6
7B6D4:  BL              sub_7C0F8
7B6D8:  LDRD.W          R0, R1, [R6]
7B6DC:  ADD.W           R2, R4, #0x14
7B6E0:  VMOV            D16, R0, R1
7B6E4:  VMOV            D17, D16
7B6E8:  VST1.32         {D16-D17}, [R2]!
7B6EC:  STRD.W          R0, R1, [R2]
7B6F0:  MOV             R0, R4
7B6F2:  POP.W           {R8}
7B6F6:  POP             {R4-R7,PC}
