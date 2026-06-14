; =========================================================
; Game Engine Function: AudioSetHRTF
; Address            : 0x247FE0 - 0x24800C
; =========================================================

247FE0:  PUSH            {R4,R5,R7,LR}
247FE2:  ADD             R7, SP, #8
247FE4:  MOV             R4, R0
247FE6:  LDR             R0, =(LogLevel_ptr - 0x247FEE)
247FE8:  MOV             R5, R1
247FEA:  ADD             R0, PC; LogLevel_ptr
247FEC:  LDR             R0, [R0]; LogLevel
247FEE:  LDR             R0, [R0]
247FF0:  CMP             R0, #3
247FF2:  BCC             loc_248002
247FF4:  LDR             R0, =(aIi - 0x248000); "(II)"
247FF6:  ADR             R1, aAudiosethrtf_0; "AudioSetHRTF"
247FF8:  ADR             R2, aAudiosethrtfD; "AudioSetHRTF %d"
247FFA:  MOV             R3, R5
247FFC:  ADD             R0, PC; "(II)"
247FFE:  BLX             j_al_print
248002:  UXTB            R1, R5
248004:  MOV             R0, R4
248006:  POP.W           {R4,R5,R7,LR}
24800A:  B               alcDeviceEnableHrtfMOB
