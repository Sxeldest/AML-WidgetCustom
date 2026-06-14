; =========================================================
; Game Engine Function: alAuxiliaryEffectSloti
; Address            : 0x23E15C - 0x23E2EA
; =========================================================

23E15C:  PUSH            {R4-R7,LR}
23E15E:  ADD             R7, SP, #0xC
23E160:  PUSH.W          {R8,R9,R11}
23E164:  MOV             R5, R2
23E166:  MOV             R4, R1
23E168:  MOV             R6, R0
23E16A:  BLX             j_GetContextRef
23E16E:  MOV             R9, R0
23E170:  CMP.W           R9, #0
23E174:  BEQ             loc_23E1DE
23E176:  ADD.W           R0, R9, #0x2C ; ','
23E17A:  MOV             R1, R6
23E17C:  LDR.W           R8, [R9,#0x88]
23E180:  BLX             j_LookupUIntMapKey
23E184:  MOV             R6, R0
23E186:  CBZ             R6, loc_23E1E4
23E188:  CMP             R4, #3
23E18A:  BEQ             loc_23E21C
23E18C:  CMP             R4, #1
23E18E:  BNE             loc_23E226
23E190:  CMP             R5, #0
23E192:  BEQ             loc_23E290
23E194:  ADD.W           R0, R8, #0x64 ; 'd'
23E198:  MOV             R1, R5
23E19A:  BLX             j_LookupUIntMapKey
23E19E:  MOV             R2, R0
23E1A0:  CMP             R2, #0
23E1A2:  BNE             loc_23E292
23E1A4:  LDR             R0, =(TrapALError_ptr - 0x23E1AA)
23E1A6:  ADD             R0, PC; TrapALError_ptr
23E1A8:  LDR             R0, [R0]; TrapALError
23E1AA:  LDRB            R0, [R0]
23E1AC:  CMP             R0, #0
23E1AE:  ITT NE
23E1B0:  MOVNE           R0, #5; sig
23E1B2:  BLXNE           raise
23E1B6:  LDREX.W         R0, [R9,#0x50]
23E1BA:  CMP             R0, #0
23E1BC:  BNE.W           loc_23E2CC
23E1C0:  ADD.W           R0, R9, #0x50 ; 'P'
23E1C4:  MOVW            R1, #0xA003
23E1C8:  DMB.W           ISH
23E1CC:  STREX.W         R2, R1, [R0]
23E1D0:  CMP             R2, #0
23E1D2:  BEQ             loc_23E2D0
23E1D4:  LDREX.W         R2, [R0]
23E1D8:  CMP             R2, #0
23E1DA:  BEQ             loc_23E1CC
23E1DC:  B               loc_23E2CC
23E1DE:  POP.W           {R8,R9,R11}
23E1E2:  POP             {R4-R7,PC}
23E1E4:  LDR             R0, =(TrapALError_ptr - 0x23E1EA)
23E1E6:  ADD             R0, PC; TrapALError_ptr
23E1E8:  LDR             R0, [R0]; TrapALError
23E1EA:  LDRB            R0, [R0]
23E1EC:  CMP             R0, #0
23E1EE:  ITT NE
23E1F0:  MOVNE           R0, #5; sig
23E1F2:  BLXNE           raise
23E1F6:  LDREX.W         R0, [R9,#0x50]
23E1FA:  CMP             R0, #0
23E1FC:  BNE             loc_23E2CC
23E1FE:  ADD.W           R0, R9, #0x50 ; 'P'
23E202:  MOVW            R1, #0xA001
23E206:  DMB.W           ISH
23E20A:  STREX.W         R2, R1, [R0]
23E20E:  CMP             R2, #0
23E210:  BEQ             loc_23E2D0
23E212:  LDREX.W         R2, [R0]
23E216:  CMP             R2, #0
23E218:  BEQ             loc_23E20A
23E21A:  B               loc_23E2CC
23E21C:  CMP             R5, #2
23E21E:  BCS             loc_23E25C
23E220:  STRB.W          R5, [R6,#0xBC]
23E224:  B               loc_23E2E2
23E226:  LDR             R0, =(TrapALError_ptr - 0x23E22C)
23E228:  ADD             R0, PC; TrapALError_ptr
23E22A:  LDR             R0, [R0]; TrapALError
23E22C:  LDRB            R0, [R0]
23E22E:  CMP             R0, #0
23E230:  ITT NE
23E232:  MOVNE           R0, #5; sig
23E234:  BLXNE           raise
23E238:  LDREX.W         R0, [R9,#0x50]
23E23C:  CMP             R0, #0
23E23E:  BNE             loc_23E2CC
23E240:  ADD.W           R0, R9, #0x50 ; 'P'
23E244:  MOVW            R1, #0xA002
23E248:  DMB.W           ISH
23E24C:  STREX.W         R2, R1, [R0]
23E250:  CBZ             R2, loc_23E2D0
23E252:  LDREX.W         R2, [R0]
23E256:  CMP             R2, #0
23E258:  BEQ             loc_23E24C
23E25A:  B               loc_23E2CC
23E25C:  LDR             R0, =(TrapALError_ptr - 0x23E262)
23E25E:  ADD             R0, PC; TrapALError_ptr
23E260:  LDR             R0, [R0]; TrapALError
23E262:  LDRB            R0, [R0]
23E264:  CMP             R0, #0
23E266:  ITT NE
23E268:  MOVNE           R0, #5; sig
23E26A:  BLXNE           raise
23E26E:  LDREX.W         R0, [R9,#0x50]
23E272:  CBNZ            R0, loc_23E2CC
23E274:  ADD.W           R0, R9, #0x50 ; 'P'
23E278:  MOVW            R1, #0xA003
23E27C:  DMB.W           ISH
23E280:  STREX.W         R2, R1, [R0]
23E284:  CBZ             R2, loc_23E2D0
23E286:  LDREX.W         R2, [R0]
23E28A:  CMP             R2, #0
23E28C:  BEQ             loc_23E280
23E28E:  B               loc_23E2CC
23E290:  MOVS            R2, #0
23E292:  MOV             R0, R8
23E294:  MOV             R1, R6
23E296:  BLX             j_InitializeEffect
23E29A:  MOV             R5, R0
23E29C:  CBZ             R5, loc_23E2E2
23E29E:  LDR             R0, =(TrapALError_ptr - 0x23E2A4)
23E2A0:  ADD             R0, PC; TrapALError_ptr
23E2A2:  LDR             R0, [R0]; TrapALError
23E2A4:  LDRB            R0, [R0]
23E2A6:  CMP             R0, #0
23E2A8:  ITT NE
23E2AA:  MOVNE           R0, #5; sig
23E2AC:  BLXNE           raise
23E2B0:  LDREX.W         R0, [R9,#0x50]
23E2B4:  CBNZ            R0, loc_23E2CC
23E2B6:  ADD.W           R0, R9, #0x50 ; 'P'
23E2BA:  DMB.W           ISH
23E2BE:  STREX.W         R1, R5, [R0]
23E2C2:  CBZ             R1, loc_23E2D0
23E2C4:  LDREX.W         R1, [R0]
23E2C8:  CMP             R1, #0
23E2CA:  BEQ             loc_23E2BE
23E2CC:  CLREX.W
23E2D0:  DMB.W           ISH
23E2D4:  MOV             R0, R9
23E2D6:  POP.W           {R8,R9,R11}
23E2DA:  POP.W           {R4-R7,LR}
23E2DE:  B.W             ALCcontext_DecRef
23E2E2:  MOVS            R0, #1
23E2E4:  STR.W           R0, [R9,#0x54]
23E2E8:  B               loc_23E2D4
