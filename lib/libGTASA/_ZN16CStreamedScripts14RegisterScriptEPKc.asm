; =========================================================
; Game Engine Function: _ZN16CStreamedScripts14RegisterScriptEPKc
; Address            : 0x335278 - 0x3352A0
; =========================================================

335278:  PUSH            {R4,R6,R7,LR}
33527A:  ADD             R7, SP, #8
33527C:  MOV             R4, R0
33527E:  LDRH.W          R0, [R4,#0xA44]
335282:  ADD.W           R0, R4, R0,LSL#5
335286:  ADDS            R0, #8; char *
335288:  BLX             strcpy
33528C:  LDRH.W          R0, [R4,#0xA44]
335290:  MOV.W           R1, #0xFFFFFFFF
335294:  ADDS            R0, #1
335296:  STRH.W          R0, [R4,#0xA44]
33529A:  UXTAH.W         R0, R1, R0
33529E:  POP             {R4,R6,R7,PC}
