; =========================================================
; Game Engine Function: _Z16emu_glMaterialfvjjPKf
; Address            : 0x1BA2F8 - 0x1BA5C2
; =========================================================

1BA2F8:  MOVW            R3, #0x405
1BA2FC:  CMP             R0, R3
1BA2FE:  BNE             loc_1BA302
1BA300:  BX              LR
1BA302:  CMP.W           R1, #0x1600
1BA306:  BGE             loc_1BA37A
1BA308:  CMP.W           R1, #0x1200
1BA30C:  BEQ.W           loc_1BA46C
1BA310:  MOVW            R0, #0x1201
1BA314:  CMP             R1, R0
1BA316:  BEQ.W           loc_1BA4C6
1BA31A:  MOVW            R0, #0x1202
1BA31E:  CMP             R1, R0
1BA320:  BNE             locret_1BA300
1BA322:  LDR             R0, =(MaterialSpecular_ptr - 0x1BA32C)
1BA324:  VLDR            S0, [R2]
1BA328:  ADD             R0, PC; MaterialSpecular_ptr
1BA32A:  VLDR            S2, [R2,#4]
1BA32E:  VLDR            S4, [R2,#8]
1BA332:  LDR             R0, [R0]; MaterialSpecular
1BA334:  VLDR            S6, [R2,#0xC]
1BA338:  VLDR            S8, [R0]
1BA33C:  VCMP.F32        S8, S0
1BA340:  VMRS            APSR_nzcv, FPSCR
1BA344:  BNE             loc_1BA370
1BA346:  VLDR            S8, [R0,#4]
1BA34A:  VCMP.F32        S8, S2
1BA34E:  VMRS            APSR_nzcv, FPSCR
1BA352:  ITTT EQ
1BA354:  VLDREQ          S8, [R0,#8]
1BA358:  VCMPEQ.F32      S8, S4
1BA35C:  VMRSEQ          APSR_nzcv, FPSCR
1BA360:  BNE             loc_1BA370
1BA362:  VLDR            S8, [R0,#0xC]
1BA366:  VCMP.F32        S8, S6
1BA36A:  VMRS            APSR_nzcv, FPSCR
1BA36E:  BEQ             locret_1BA300
1BA370:  LDR             R0, =(MaterialSpecular_ptr - 0x1BA378)
1BA372:  LDR             R1, =(MaterialDirty_ptr - 0x1BA37A)
1BA374:  ADD             R0, PC; MaterialSpecular_ptr
1BA376:  ADD             R1, PC; MaterialDirty_ptr
1BA378:  B               loc_1BA578
1BA37A:  BEQ.W           loc_1BA520
1BA37E:  MOVW            R0, #0x1601
1BA382:  CMP             R1, R0
1BA384:  BEQ.W           loc_1BA592
1BA388:  MOVW            R0, #0x1602
1BA38C:  CMP             R1, R0
1BA38E:  BNE             locret_1BA300
1BA390:  LDR             R0, =(MaterialAmbient_ptr - 0x1BA39A)
1BA392:  VLDR            S6, [R2]
1BA396:  ADD             R0, PC; MaterialAmbient_ptr
1BA398:  VLDR            S4, [R2,#4]
1BA39C:  VLDR            S2, [R2,#8]
1BA3A0:  LDR             R0, [R0]; MaterialAmbient
1BA3A2:  VLDR            S0, [R2,#0xC]
1BA3A6:  VLDR            S8, [R0]
1BA3AA:  VCMP.F32        S8, S6
1BA3AE:  VMRS            APSR_nzcv, FPSCR
1BA3B2:  BNE             loc_1BA3DE
1BA3B4:  VLDR            S8, [R0,#4]
1BA3B8:  VCMP.F32        S8, S4
1BA3BC:  VMRS            APSR_nzcv, FPSCR
1BA3C0:  ITTT EQ
1BA3C2:  VLDREQ          S8, [R0,#8]
1BA3C6:  VCMPEQ.F32      S8, S2
1BA3CA:  VMRSEQ          APSR_nzcv, FPSCR
1BA3CE:  BNE             loc_1BA3DE
1BA3D0:  VLDR            S8, [R0,#0xC]
1BA3D4:  VCMP.F32        S8, S0
1BA3D8:  VMRS            APSR_nzcv, FPSCR
1BA3DC:  BEQ             loc_1BA40E
1BA3DE:  LDR             R0, =(MaterialAmbient_ptr - 0x1BA3E6)
1BA3E0:  LDR             R1, =(MaterialDirty_ptr - 0x1BA3E8)
1BA3E2:  ADD             R0, PC; MaterialAmbient_ptr
1BA3E4:  ADD             R1, PC; MaterialDirty_ptr
1BA3E6:  LDR             R0, [R0]; MaterialAmbient
1BA3E8:  LDR             R1, [R1]; MaterialDirty
1BA3EA:  VSTR            S6, [R0]
1BA3EE:  VSTR            S4, [R0,#4]
1BA3F2:  VSTR            S2, [R0,#8]
1BA3F6:  VSTR            S0, [R0,#0xC]
1BA3FA:  MOVS            R0, #1
1BA3FC:  STRB            R0, [R1]
1BA3FE:  VLDR            S6, [R2]
1BA402:  VLDR            S4, [R2,#4]
1BA406:  VLDR            S2, [R2,#8]
1BA40A:  VLDR            S0, [R2,#0xC]
1BA40E:  LDR             R0, =(MaterialDiffuse_ptr - 0x1BA414)
1BA410:  ADD             R0, PC; MaterialDiffuse_ptr
1BA412:  LDR             R0, [R0]; MaterialDiffuse
1BA414:  VLDR            S8, [R0]
1BA418:  VCMP.F32        S8, S6
1BA41C:  VMRS            APSR_nzcv, FPSCR
1BA420:  BNE             loc_1BA44E
1BA422:  VLDR            S8, [R0,#4]
1BA426:  VCMP.F32        S8, S4
1BA42A:  VMRS            APSR_nzcv, FPSCR
1BA42E:  ITTT EQ
1BA430:  VLDREQ          S8, [R0,#8]
1BA434:  VCMPEQ.F32      S8, S2
1BA438:  VMRSEQ          APSR_nzcv, FPSCR
1BA43C:  BNE             loc_1BA44E
1BA43E:  VLDR            S8, [R0,#0xC]
1BA442:  VCMP.F32        S8, S0
1BA446:  VMRS            APSR_nzcv, FPSCR
1BA44A:  BEQ.W           locret_1BA300
1BA44E:  LDR             R0, =(MaterialDiffuse_ptr - 0x1BA456)
1BA450:  LDR             R1, =(MaterialDirty_ptr - 0x1BA458)
1BA452:  ADD             R0, PC; MaterialDiffuse_ptr
1BA454:  ADD             R1, PC; MaterialDirty_ptr
1BA456:  LDR             R0, [R0]; MaterialDiffuse
1BA458:  LDR             R1, [R1]; MaterialDirty
1BA45A:  VSTR            S6, [R0]
1BA45E:  VSTR            S4, [R0,#4]
1BA462:  VSTR            S2, [R0,#8]
1BA466:  VSTR            S0, [R0,#0xC]
1BA46A:  B               loc_1BA58C
1BA46C:  LDR             R0, =(MaterialAmbient_ptr - 0x1BA476)
1BA46E:  VLDR            S0, [R2]
1BA472:  ADD             R0, PC; MaterialAmbient_ptr
1BA474:  VLDR            S2, [R2,#4]
1BA478:  VLDR            S4, [R2,#8]
1BA47C:  LDR             R0, [R0]; MaterialAmbient
1BA47E:  VLDR            S6, [R2,#0xC]
1BA482:  VLDR            S8, [R0]
1BA486:  VCMP.F32        S8, S0
1BA48A:  VMRS            APSR_nzcv, FPSCR
1BA48E:  BNE             loc_1BA4BC
1BA490:  VLDR            S8, [R0,#4]
1BA494:  VCMP.F32        S8, S2
1BA498:  VMRS            APSR_nzcv, FPSCR
1BA49C:  ITTT EQ
1BA49E:  VLDREQ          S8, [R0,#8]
1BA4A2:  VCMPEQ.F32      S8, S4
1BA4A6:  VMRSEQ          APSR_nzcv, FPSCR
1BA4AA:  BNE             loc_1BA4BC
1BA4AC:  VLDR            S8, [R0,#0xC]
1BA4B0:  VCMP.F32        S8, S6
1BA4B4:  VMRS            APSR_nzcv, FPSCR
1BA4B8:  BEQ.W           locret_1BA300
1BA4BC:  LDR             R0, =(MaterialAmbient_ptr - 0x1BA4C4)
1BA4BE:  LDR             R1, =(MaterialDirty_ptr - 0x1BA4C6)
1BA4C0:  ADD             R0, PC; MaterialAmbient_ptr
1BA4C2:  ADD             R1, PC; MaterialDirty_ptr
1BA4C4:  B               loc_1BA578
1BA4C6:  LDR             R0, =(MaterialDiffuse_ptr - 0x1BA4D0)
1BA4C8:  VLDR            S0, [R2]
1BA4CC:  ADD             R0, PC; MaterialDiffuse_ptr
1BA4CE:  VLDR            S2, [R2,#4]
1BA4D2:  VLDR            S4, [R2,#8]
1BA4D6:  LDR             R0, [R0]; MaterialDiffuse
1BA4D8:  VLDR            S6, [R2,#0xC]
1BA4DC:  VLDR            S8, [R0]
1BA4E0:  VCMP.F32        S8, S0
1BA4E4:  VMRS            APSR_nzcv, FPSCR
1BA4E8:  BNE             loc_1BA516
1BA4EA:  VLDR            S8, [R0,#4]
1BA4EE:  VCMP.F32        S8, S2
1BA4F2:  VMRS            APSR_nzcv, FPSCR
1BA4F6:  ITTT EQ
1BA4F8:  VLDREQ          S8, [R0,#8]
1BA4FC:  VCMPEQ.F32      S8, S4
1BA500:  VMRSEQ          APSR_nzcv, FPSCR
1BA504:  BNE             loc_1BA516
1BA506:  VLDR            S8, [R0,#0xC]
1BA50A:  VCMP.F32        S8, S6
1BA50E:  VMRS            APSR_nzcv, FPSCR
1BA512:  BEQ.W           locret_1BA300
1BA516:  LDR             R0, =(MaterialDiffuse_ptr - 0x1BA51E)
1BA518:  LDR             R1, =(MaterialDirty_ptr - 0x1BA520)
1BA51A:  ADD             R0, PC; MaterialDiffuse_ptr
1BA51C:  ADD             R1, PC; MaterialDirty_ptr
1BA51E:  B               loc_1BA578
1BA520:  LDR             R0, =(MaterialEmissive_ptr - 0x1BA52A)
1BA522:  VLDR            S0, [R2]
1BA526:  ADD             R0, PC; MaterialEmissive_ptr
1BA528:  VLDR            S2, [R2,#4]
1BA52C:  VLDR            S4, [R2,#8]
1BA530:  LDR             R0, [R0]; MaterialEmissive
1BA532:  VLDR            S6, [R2,#0xC]
1BA536:  VLDR            S8, [R0]
1BA53A:  VCMP.F32        S8, S0
1BA53E:  VMRS            APSR_nzcv, FPSCR
1BA542:  BNE             loc_1BA570
1BA544:  VLDR            S8, [R0,#4]
1BA548:  VCMP.F32        S8, S2
1BA54C:  VMRS            APSR_nzcv, FPSCR
1BA550:  ITTT EQ
1BA552:  VLDREQ          S8, [R0,#8]
1BA556:  VCMPEQ.F32      S8, S4
1BA55A:  VMRSEQ          APSR_nzcv, FPSCR
1BA55E:  BNE             loc_1BA570
1BA560:  VLDR            S8, [R0,#0xC]
1BA564:  VCMP.F32        S8, S6
1BA568:  VMRS            APSR_nzcv, FPSCR
1BA56C:  BEQ.W           locret_1BA300
1BA570:  LDR             R0, =(MaterialEmissive_ptr - 0x1BA578)
1BA572:  LDR             R1, =(MaterialDirty_ptr - 0x1BA57A)
1BA574:  ADD             R0, PC; MaterialEmissive_ptr
1BA576:  ADD             R1, PC; MaterialDirty_ptr
1BA578:  LDR             R0, [R0]
1BA57A:  LDR             R1, [R1]; MaterialDirty
1BA57C:  VSTR            S0, [R0]
1BA580:  VSTR            S2, [R0,#4]
1BA584:  VSTR            S4, [R0,#8]
1BA588:  VSTR            S6, [R0,#0xC]
1BA58C:  MOVS            R0, #1
1BA58E:  STRB            R0, [R1]
1BA590:  BX              LR
1BA592:  LDR             R0, =(MaterialShininess_ptr - 0x1BA59C)
1BA594:  VLDR            S0, [R2]
1BA598:  ADD             R0, PC; MaterialShininess_ptr
1BA59A:  LDR             R0, [R0]; MaterialShininess
1BA59C:  VLDR            S2, [R0]
1BA5A0:  VCMP.F32        S2, S0
1BA5A4:  VMRS            APSR_nzcv, FPSCR
1BA5A8:  IT EQ
1BA5AA:  BXEQ            LR
1BA5AC:  LDR             R0, =(MaterialDirty_ptr - 0x1BA5B6)
1BA5AE:  MOVS            R2, #1
1BA5B0:  LDR             R1, =(MaterialShininess_ptr - 0x1BA5B8)
1BA5B2:  ADD             R0, PC; MaterialDirty_ptr
1BA5B4:  ADD             R1, PC; MaterialShininess_ptr
1BA5B6:  LDR             R0, [R0]; MaterialDirty
1BA5B8:  LDR             R1, [R1]; MaterialShininess
1BA5BA:  STRB            R2, [R0]
1BA5BC:  VSTR            S0, [R1]
1BA5C0:  BX              LR
