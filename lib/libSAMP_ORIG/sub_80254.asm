; =========================================================
; Game Engine Function: sub_80254
; Address            : 0x80254 - 0x8027C
; =========================================================

80254:  PUSH            {R4,R5,R7,LR}
80256:  ADD             R7, SP, #8
80258:  LDR             R4, =(byte_1A49B3 - 0x8025E)
8025A:  ADD             R4, PC; byte_1A49B3
8025C:  LDRB            R0, [R4]
8025E:  CBZ             R0, locret_8027A
80260:  LDR             R0, =(aSvDbgPlaybackF - 0x80266); "[sv:dbg:playback:free] : module releasi"... ...
80262:  ADD             R0, PC; "[sv:dbg:playback:free] : module releasi"...
80264:  BL              sub_80664
80268:  LDR             R1, =(byte_1A49B4 - 0x80272)
8026A:  MOVS            R5, #0
8026C:  LDR             R0, =(aSvDbgPlaybackF_0 - 0x80274); "[sv:dbg:playback:free] : module release"... ...
8026E:  ADD             R1, PC; byte_1A49B4
80270:  ADD             R0, PC; "[sv:dbg:playback:free] : module release"...
80272:  STRB            R5, [R1]
80274:  BL              sub_80664
80278:  STRB            R5, [R4]
8027A:  POP             {R4,R5,R7,PC}
