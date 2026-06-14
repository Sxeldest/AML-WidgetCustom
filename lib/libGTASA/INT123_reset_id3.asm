; =========================================================
; Game Engine Function: INT123_reset_id3
; Address            : 0x226E8C - 0x226EC0
; =========================================================

226E8C:  PUSH            {R4,R6,R7,LR}
226E8E:  ADD             R7, SP, #8
226E90:  MOV             R4, R0
226E92:  BLX             j_INT123_exit_id3
226E96:  MOVW            R0, #0xB4FC
226E9A:  MOVS            R1, #0
226E9C:  STRB            R1, [R4,R0]
226E9E:  MOVW            R0, #0xB520
226EA2:  VMOV.I32        Q8, #0
226EA6:  ADD             R0, R4
226EA8:  VST1.32         {D16-D17}, [R0]
226EAC:  MOVW            R0, #0xB510
226EB0:  ADD             R0, R4
226EB2:  VST1.32         {D16-D17}, [R0]
226EB6:  ADD.W           R0, R4, #0xB500
226EBA:  VST1.32         {D16-D17}, [R0]
226EBE:  POP             {R4,R6,R7,PC}
