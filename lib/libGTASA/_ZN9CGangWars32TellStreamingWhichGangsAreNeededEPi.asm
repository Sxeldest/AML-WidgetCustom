; =========================================================
; Game Engine Function: _ZN9CGangWars32TellStreamingWhichGangsAreNeededEPi
; Address            : 0x30E31C - 0x30E37C
; =========================================================

30E31C:  PUSH            {R4,R6,R7,LR}
30E31E:  ADD             R7, SP, #8
30E320:  SUB             SP, SP, #0x10
30E322:  MOV             R4, R0
30E324:  LDR             R0, =(_ZN9CGangWars6State2E_ptr - 0x30E32A)
30E326:  ADD             R0, PC; _ZN9CGangWars6State2E_ptr
30E328:  LDR             R0, [R0]; CGangWars::State2 ...
30E32A:  LDR             R0, [R0]; CGangWars::State2
30E32C:  CBZ             R0, loc_30E378
30E32E:  MOV             R0, SP; int
30E330:  MOV.W           R1, #0xFFFFFFFF
30E334:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30E338:  LDR             R0, =(_ZN9CGangWars13PointOfAttackE_ptr - 0x30E342)
30E33A:  VLDR            D16, [SP,#0x18+var_18]
30E33E:  ADD             R0, PC; _ZN9CGangWars13PointOfAttackE_ptr
30E340:  VLDR            S2, =150.0
30E344:  LDR             R0, [R0]; CGangWars::PointOfAttack ...
30E346:  VLDR            D17, [R0]
30E34A:  VSUB.F32        D16, D16, D17
30E34E:  VMUL.F32        D0, D16, D16
30E352:  VADD.F32        S0, S0, S1
30E356:  VSQRT.F32       S0, S0
30E35A:  VCMPE.F32       S0, S2
30E35E:  VMRS            APSR_nzcv, FPSCR
30E362:  BGE             loc_30E378
30E364:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30E36E)
30E366:  MOVS            R2, #1
30E368:  LDR             R1, [R4]
30E36A:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30E36C:  LDR             R0, [R0]; CGangWars::Gang1 ...
30E36E:  LDR             R0, [R0]; CGangWars::Gang1
30E370:  LSL.W           R0, R2, R0
30E374:  ORRS            R0, R1
30E376:  STR             R0, [R4]
30E378:  ADD             SP, SP, #0x10
30E37A:  POP             {R4,R6,R7,PC}
