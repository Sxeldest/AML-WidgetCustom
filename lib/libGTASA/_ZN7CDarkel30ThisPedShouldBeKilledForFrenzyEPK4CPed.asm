; =========================================================
; Game Engine Function: _ZN7CDarkel30ThisPedShouldBeKilledForFrenzyEPK4CPed
; Address            : 0x3042EC - 0x304348
; =========================================================

3042EC:  LDR             R1, =(_ZN7CDarkel6StatusE_ptr - 0x3042F2)
3042EE:  ADD             R1, PC; _ZN7CDarkel6StatusE_ptr
3042F0:  LDR             R1, [R1]; CDarkel::Status ...
3042F2:  LDRH            R1, [R1]; CDarkel::Status
3042F4:  CMP             R1, #4
3042F6:  IT NE
3042F8:  CMPNE           R1, #1
3042FA:  BNE             loc_304334
3042FC:  LDR             R1, =(_ZN7CDarkel11ModelToKillE_ptr - 0x304302)
3042FE:  ADD             R1, PC; _ZN7CDarkel11ModelToKillE_ptr
304300:  LDR             R1, [R1]; CDarkel::ModelToKill ...
304302:  LDR             R2, [R1]; CDarkel::ModelToKill
304304:  ADDS            R1, R2, #1
304306:  ITT NE
304308:  LDRSHNE.W       R1, [R0,#0x26]
30430C:  CMPNE           R2, R1
30430E:  BEQ             loc_304338
304310:  LDR             R2, =(_ZN7CDarkel12ModelToKill2E_ptr - 0x304316)
304312:  ADD             R2, PC; _ZN7CDarkel12ModelToKill2E_ptr
304314:  LDR             R2, [R2]; CDarkel::ModelToKill2 ...
304316:  LDR             R2, [R2]; CDarkel::ModelToKill2
304318:  CMP             R2, R1
30431A:  BEQ             loc_304338
30431C:  LDR             R2, =(_ZN7CDarkel12ModelToKill3E_ptr - 0x304322)
30431E:  ADD             R2, PC; _ZN7CDarkel12ModelToKill3E_ptr
304320:  LDR             R2, [R2]; CDarkel::ModelToKill3 ...
304322:  LDR             R2, [R2]; CDarkel::ModelToKill3
304324:  CMP             R2, R1
304326:  BEQ             loc_304338
304328:  LDR             R2, =(_ZN7CDarkel12ModelToKill4E_ptr - 0x30432E)
30432A:  ADD             R2, PC; _ZN7CDarkel12ModelToKill4E_ptr
30432C:  LDR             R2, [R2]; CDarkel::ModelToKill4 ...
30432E:  LDR             R2, [R2]; CDarkel::ModelToKill4
304330:  CMP             R2, R1
304332:  BEQ             loc_304338
304334:  MOVS            R0, #0
304336:  BX              LR
304338:  LDR.W           R0, [R0,#0x59C]
30433C:  CMP             R0, #1
30433E:  ITT HI
304340:  MOVHI           R0, #1
304342:  BXHI            LR
304344:  MOVS            R0, #0
304346:  BX              LR
