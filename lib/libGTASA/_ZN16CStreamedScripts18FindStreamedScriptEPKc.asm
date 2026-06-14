; =========================================================
; Game Engine Function: _ZN16CStreamedScripts18FindStreamedScriptEPKc
; Address            : 0x3352D4 - 0x335308
; =========================================================

3352D4:  PUSH            {R4-R7,LR}
3352D6:  ADD             R7, SP, #0xC
3352D8:  PUSH.W          {R8}
3352DC:  LDRH.W          R5, [R0,#0xA44]
3352E0:  MOV             R8, R1
3352E2:  CBZ             R5, loc_3352FC
3352E4:  ADD.W           R6, R0, #8
3352E8:  MOVS            R4, #0
3352EA:  MOV             R0, R6; char *
3352EC:  MOV             R1, R8; char *
3352EE:  BLX             strcasecmp
3352F2:  CBZ             R0, loc_335300
3352F4:  ADDS            R4, #1
3352F6:  ADDS            R6, #0x20 ; ' '
3352F8:  CMP             R4, R5
3352FA:  BLT             loc_3352EA
3352FC:  MOV.W           R4, #0xFFFFFFFF
335300:  MOV             R0, R4
335302:  POP.W           {R8}
335306:  POP             {R4-R7,PC}
