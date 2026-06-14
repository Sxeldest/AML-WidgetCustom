; =========================================================
; Game Engine Function: WriteUnlock
; Address            : 0x1C1040 - 0x1C10A8
; =========================================================

1C1040:  ADD             R1, R0, #0x10
1C1044:  MOV             R2, #0
1C1048:  DMB             ISH
1C104C:  LDREX           R3, [R1]
1C1050:  STREX           R3, R2, [R1]
1C1054:  CMP             R3, #0
1C1058:  BNE             loc_1C104C
1C105C:  ADD             R12, R0, #4
1C1060:  DMB             ISH
1C1064:  LDREX           R1, [R12]
1C1068:  SUB             R3, R1, #1
1C106C:  STREX           R2, R3, [R12]
1C1070:  CMP             R2, #0
1C1074:  BNE             loc_1C1064
1C1078:  CMP             R1, #1
1C107C:  DMB             ISH
1C1080:  BXNE            LR
1C1084:  ADD             R0, R0, #8
1C1088:  MOV             R1, #0
1C108C:  DMB             ISH
1C1090:  LDREX           R2, [R0]
1C1094:  STREX           R2, R1, [R0]
1C1098:  CMP             R2, #0
1C109C:  BNE             loc_1C1090
1C10A0:  DMB             ISH
1C10A4:  BX              LR
