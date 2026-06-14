; =========================================================
; Game Engine Function: _ZN16CStreamedScripts23FindStreamedScriptQuietEPKc
; Address            : 0x3352A0 - 0x3352D4
; =========================================================

3352A0:  PUSH            {R4-R7,LR}
3352A2:  ADD             R7, SP, #0xC
3352A4:  PUSH.W          {R8}
3352A8:  LDRH.W          R5, [R0,#0xA44]
3352AC:  MOV             R8, R1
3352AE:  CBZ             R5, loc_3352C8
3352B0:  ADD.W           R6, R0, #8
3352B4:  MOVS            R4, #0
3352B6:  MOV             R0, R6; char *
3352B8:  MOV             R1, R8; char *
3352BA:  BLX             strcasecmp
3352BE:  CBZ             R0, loc_3352CC
3352C0:  ADDS            R4, #1
3352C2:  ADDS            R6, #0x20 ; ' '
3352C4:  CMP             R4, R5
3352C6:  BLT             loc_3352B6
3352C8:  MOV.W           R4, #0xFFFFFFFF
3352CC:  MOV             R0, R4
3352CE:  POP.W           {R8}
3352D2:  POP             {R4-R7,PC}
