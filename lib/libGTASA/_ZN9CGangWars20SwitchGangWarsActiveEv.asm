; =========================================================
; Game Engine Function: _ZN9CGangWars20SwitchGangWarsActiveEv
; Address            : 0x30E234 - 0x30E29C
; =========================================================

30E234:  PUSH            {R4,R5,R7,LR}
30E236:  ADD             R7, SP, #8
30E238:  LDR             R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x30E23E)
30E23A:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
30E23C:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
30E23E:  LDRB            R4, [R0]; CGangWars::bGangWarsActive
30E240:  MOV             R0, R4; this
30E242:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
30E246:  BLX             rand
30E24A:  VMOV            S0, R0
30E24E:  VLDR            S2, =4.6566e-10
30E252:  LDR             R0, =(_ZN9CGangWars18TimeTillNextAttackE_ptr - 0x30E262)
30E254:  CMP             R4, #0
30E256:  VCVT.F32.S32    S0, S0
30E25A:  EOR.W           R5, R4, #1
30E25E:  ADD             R0, PC; _ZN9CGangWars18TimeTillNextAttackE_ptr
30E260:  LDR             R0, [R0]; CGangWars::TimeTillNextAttack ...
30E262:  VMUL.F32        S0, S0, S2
30E266:  VLDR            S2, =0.9
30E26A:  VMUL.F32        S0, S0, S2
30E26E:  VLDR            S2, =0.6
30E272:  VADD.F32        S0, S0, S2
30E276:  VLDR            S2, =1080000.0
30E27A:  VMUL.F32        S0, S0, S2
30E27E:  VCVT.U32.F32    S0, S0
30E282:  VCVT.F32.U32    S0, S0
30E286:  VSTR            S0, [R0]
30E28A:  ITT NE
30E28C:  MOVNE           R0, #0; this
30E28E:  BLXNE           j__ZN9CGangWars10EndGangWarEb; CGangWars::EndGangWar(bool)
30E292:  LDR             R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x30E298)
30E294:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
30E296:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
30E298:  STRB            R5, [R0]; CGangWars::bGangWarsActive
30E29A:  POP             {R4,R5,R7,PC}
