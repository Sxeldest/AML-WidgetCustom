; =========================================================
; Game Engine Function: sub_80060
; Address            : 0x80060 - 0x800B8
; =========================================================

80060:  PUSH            {R4,R5,R7,LR}
80062:  ADD             R7, SP, #8
80064:  LDR             R5, =(byte_1A49B3 - 0x8006A)
80066:  ADD             R5, PC; byte_1A49B3
80068:  LDRB            R0, [R5]
8006A:  CBNZ            R0, loc_800B2
8006C:  LDR             R0, =(aSvDbgPlaybackI - 0x80072); "[sv:dbg:playback:init] : module initial"... ...
8006E:  ADD             R0, PC; "[sv:dbg:playback:init] : module initial"...
80070:  BL              sub_80664
80074:  BL              sub_825CC
80078:  CBNZ            R0, loc_80098
8007A:  MOVS            R0, #1
8007C:  BL              sub_825FC
80080:  MOVS            R0, #1
80082:  BL              sub_82680
80086:  MOVS            R0, #0x64 ; 'd'
80088:  BL              sub_8268C
8008C:  MOVS            R0, #0
8008E:  BL              sub_82698
80092:  MOVS            R0, #0
80094:  BL              sub_826A4
80098:  LDR             R0, =(aSvDbgPlaybackI_0 - 0x8009E); "[sv:dbg:playback:init] : module initial"... ...
8009A:  ADD             R0, PC; "[sv:dbg:playback:init] : module initial"...
8009C:  BL              sub_80664
800A0:  MOVS            R4, #1
800A2:  STRB            R4, [R5]
800A4:  BL              sub_800CC
800A8:  CBNZ            R0, loc_800B4
800AA:  LDR             R0, =(aSvErrBassinith - 0x800B0); "[sv:err:bassinithook] : failed to initi"... ...
800AC:  ADD             R0, PC; "[sv:err:bassinithook] : failed to initi"...
800AE:  BL              sub_80664
800B2:  MOVS            R4, #0
800B4:  MOV             R0, R4
800B6:  POP             {R4,R5,R7,PC}
