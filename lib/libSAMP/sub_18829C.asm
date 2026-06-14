; =========================================================
; Game Engine Function: sub_18829C
; Address            : 0x18829C - 0x1882D2
; =========================================================

18829C:  PUSH            {R4,R5,R7,LR}
18829E:  ADD             R7, SP, #8
1882A0:  MOV             R5, R0
1882A2:  LDR             R0, [R0]; void *
1882A4:  MOV             R4, R1
1882A6:  CBZ             R0, loc_1882AC
1882A8:  BLX             j__ZdaPv; operator delete[](void *)
1882AC:  BIC.W           R0, R4, #0xE0000000
1882B0:  SUBS            R1, R4, R0
1882B2:  MOV.W           R0, R4,LSL#3
1882B6:  IT NE
1882B8:  MOVNE           R1, #1
1882BA:  CMP             R1, #0
1882BC:  IT NE
1882BE:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
1882C2:  BLX             j__Znaj; operator new[](uint)
1882C6:  MOVS            R1, #0
1882C8:  STRD.W          R0, R1, [R5]
1882CC:  STRD.W          R1, R4, [R5,#8]
1882D0:  POP             {R4,R5,R7,PC}
