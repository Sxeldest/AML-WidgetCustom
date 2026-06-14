; =========================================================
; Game Engine Function: sub_83224
; Address            : 0x83224 - 0x83286
; =========================================================

83224:  PUSH            {R4,R5,R7,LR}
83226:  ADD             R7, SP, #8
83228:  LDR             R0, =(byte_1A49FC - 0x8322E)
8322A:  ADD             R0, PC; byte_1A49FC
8322C:  LDRB            R0, [R0]
8322E:  CBZ             R0, locret_83284
83230:  LDR             R0, =(byte_1A4A24 - 0x8323A)
83232:  MOVS            R2, #0
83234:  LDR             R1, =(byte_1A6FA6 - 0x8323C)
83236:  ADD             R0, PC; byte_1A4A24
83238:  ADD             R1, PC; byte_1A6FA6
8323A:  LDRB            R0, [R0]
8323C:  STRB            R2, [R1]
8323E:  CMP             R0, #0
83240:  IT NE
83242:  POPNE           {R4,R5,R7,PC}
83244:  LDR             R0, =(off_114CC4 - 0x8324C)
83246:  LDR             R4, =(dword_1A4A1C - 0x8324E)
83248:  ADD             R0, PC; off_114CC4
8324A:  ADD             R4, PC; dword_1A4A1C
8324C:  LDR             R1, [R0]; off_1ABEF8
8324E:  LDR             R0, [R4]
83250:  LDR             R1, [R1]
83252:  BLX             R1
83254:  LDR             R0, =(dword_1A4A18 - 0x8325A)
83256:  ADD             R0, PC; dword_1A4A18
83258:  LDR             R0, [R0]
8325A:  MOVW            R1, #0xFBC
8325E:  BLX             j_opus_encoder_ctl
83262:  LDR             R0, =(aSvDbgRecordSto_0 - 0x83268); "[sv:dbg:record:stoprecording] : channel"... ...
83264:  ADD             R0, PC; "[sv:dbg:record:stoprecording] : channel"...
83266:  BL              sub_80664
8326A:  LDR             R0, =(off_114CC0 - 0x83270)
8326C:  ADD             R0, PC; off_114CC0
8326E:  LDR             R5, [R0]; off_1ABF44
83270:  LDR             R0, [R4]
83272:  LDR             R3, [R5]
83274:  MOVS            R1, #0
83276:  MOVS            R2, #0
83278:  BLX             R3
8327A:  MOV             R2, R0
8327C:  LDR             R0, [R4]
8327E:  LDR             R3, [R5]
83280:  MOVS            R1, #0
83282:  BLX             R3
83284:  POP             {R4,R5,R7,PC}
