; =========================================================
; Game Engine Function: _ZN14CTempColModels10InitialiseEv
; Address            : 0x470150 - 0x470D02
; =========================================================

470150:  PUSH            {R4-R7,LR}
470152:  ADD             R7, SP, #0xC
470154:  PUSH.W          {R8-R11}
470158:  SUB             SP, SP, #0x2C
47015A:  LDR.W           R0, =(_ZN14CTempColModels15ms_colModelBBoxE_ptr - 0x47016A)
47015E:  ADD             R2, SP, #0x48+var_28; CVector *
470160:  MOVS            R6, #0
470162:  MOV.W           R1, #0x40000000; float
470166:  ADD             R0, PC; _ZN14CTempColModels15ms_colModelBBoxE_ptr
470168:  STRD.W          R6, R6, [SP,#0x48+var_28]
47016C:  STR             R6, [SP,#0x48+var_20]
47016E:  MOV.W           R8, #0x40000000
470172:  LDR             R5, [R0]; CTempColModels::ms_colModelBBox ...
470174:  ADD.W           R0, R5, #0x18; this
470178:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
47017C:  ADD             R1, SP, #0x48+var_28; CVector *
47017E:  ADD             R2, SP, #0x48+var_34; CVector *
470180:  MOV.W           R9, #0xC0000000
470184:  MOV             R0, R5; this
470186:  STRD.W          R9, R9, [SP,#0x48+var_24]
47018A:  STRD.W          R8, R8, [SP,#0x48+var_34]
47018E:  STRD.W          R8, R9, [SP,#0x48+var_2C]
470192:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
470196:  LDR.W           R0, =(_ZN14CTempColModels17ms_colModelCutObjE_ptr - 0x4701A8)
47019A:  ADD             R2, SP, #0x48+var_28; CVector *
47019C:  MOV.W           R1, #0x40000000; float
4701A0:  STRB.W          R6, [R5,#(byte_796150 - 0x796128)]
4701A4:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelCutObjE_ptr
4701A6:  STRD.W          R6, R6, [SP,#0x48+var_28]
4701AA:  STR             R6, [SP,#0x48+var_20]
4701AC:  LDR             R4, [R0]; CTempColModels::ms_colModelCutObj ...
4701AE:  ADD.W           R0, R4, #0x18; this
4701B2:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
4701B6:  ADD             R1, SP, #0x48+var_28; CVector *
4701B8:  ADD             R2, SP, #0x48+var_34; CVector *
4701BA:  MOV             R0, R4; this
4701BC:  STRD.W          R9, R9, [SP,#0x48+var_24]
4701C0:  STRD.W          R8, R8, [SP,#0x48+var_34]
4701C4:  STRD.W          R8, R9, [SP,#0x48+var_2C]
4701C8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4701CC:  ADD.W           R0, R4, #0x48 ; 'H'; this
4701D0:  ADD             R2, SP, #0x48+var_28; CVector *
4701D2:  MOV.W           R1, #0x40000000; float
4701D6:  STRB.W          R6, [R4,#(byte_796180 - 0x796158)]
4701DA:  STRD.W          R6, R6, [SP,#0x48+var_28]
4701DE:  STR             R6, [SP,#0x48+var_20]
4701E0:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
4701E4:  ADD.W           R0, R4, #0x30 ; '0'; this
4701E8:  ADD             R1, SP, #0x48+var_28; CVector *
4701EA:  ADD             R2, SP, #0x48+var_34; CVector *
4701EC:  STRD.W          R9, R9, [SP,#0x48+var_24]
4701F0:  STRD.W          R8, R8, [SP,#0x48+var_34]
4701F4:  STRD.W          R8, R9, [SP,#0x48+var_2C]
4701F8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4701FC:  ADD.W           R0, R4, #0x78 ; 'x'; this
470200:  ADD             R2, SP, #0x48+var_28; CVector *
470202:  MOV.W           R1, #0x40000000; float
470206:  STRB.W          R6, [R4,#(byte_7961B0 - 0x796158)]
47020A:  STRD.W          R6, R6, [SP,#0x48+var_28]
47020E:  STR             R6, [SP,#0x48+var_20]
470210:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470214:  ADD.W           R0, R4, #0x60 ; '`'; this
470218:  ADD             R1, SP, #0x48+var_28; CVector *
47021A:  ADD             R2, SP, #0x48+var_34; CVector *
47021C:  STRD.W          R9, R9, [SP,#0x48+var_24]
470220:  STRD.W          R8, R8, [SP,#0x48+var_34]
470224:  STRD.W          R8, R9, [SP,#0x48+var_2C]
470228:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
47022C:  ADD.W           R0, R4, #0xA8; this
470230:  ADD             R2, SP, #0x48+var_28; CVector *
470232:  MOV.W           R1, #0x40000000; float
470236:  STRB.W          R6, [R4,#(byte_7961E0 - 0x796158)]
47023A:  STRD.W          R6, R6, [SP,#0x48+var_28]
47023E:  STR             R6, [SP,#0x48+var_20]
470240:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470244:  ADD.W           R0, R4, #0x90; this
470248:  ADD             R1, SP, #0x48+var_28; CVector *
47024A:  ADD             R2, SP, #0x48+var_34; CVector *
47024C:  STRD.W          R9, R9, [SP,#0x48+var_24]
470250:  STRD.W          R8, R8, [SP,#0x48+var_34]
470254:  STRD.W          R8, R9, [SP,#0x48+var_2C]
470258:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
47025C:  ADD.W           R0, R4, #0xD8; this
470260:  ADD             R2, SP, #0x48+var_28; CVector *
470262:  MOV.W           R1, #0x40000000; float
470266:  STRB.W          R6, [R4,#(byte_796210 - 0x796158)]
47026A:  STRD.W          R6, R6, [SP,#0x48+var_28]
47026E:  STR             R6, [SP,#0x48+var_20]
470270:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470274:  ADD.W           R0, R4, #0xC0; this
470278:  ADD             R1, SP, #0x48+var_28; CVector *
47027A:  ADD             R2, SP, #0x48+var_34; CVector *
47027C:  STRD.W          R9, R9, [SP,#0x48+var_24]
470280:  STRD.W          R8, R8, [SP,#0x48+var_34]
470284:  STRD.W          R8, R9, [SP,#0x48+var_2C]
470288:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
47028C:  LDR.W           R0, =(_ZN14CTempColModels15ms_colModelPed1E_ptr - 0x47029A)
470290:  MOVS            R1, #3; int
470292:  MOVS            R2, #0; int
470294:  MOVS            R3, #2; int
470296:  ADD             R0, PC; _ZN14CTempColModels15ms_colModelPed1E_ptr
470298:  STRB.W          R6, [R4,#(byte_796240 - 0x796158)]
47029C:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4702A0:  MOV.W           R10, #2
4702A4:  LDR             R5, [R0]; CTempColModels::ms_colModelPed1 ...
4702A6:  STR             R6, [SP,#0x48+var_40]; bool
4702A8:  MOV             R0, R5; this
4702AA:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
4702AE:  LDR             R4, [R5,#(dword_796544 - 0x796518)]
4702B0:  MOVW            R1, #0xCCCC
4702B4:  MOVW            R9, #0x3333
4702B8:  MOVT            R1, #0xBE4C
4702BC:  MOVT            R9, #0x3EB3
4702C0:  ADD             R2, SP, #0x48+var_28; CVector *
4702C2:  LDR             R0, [R4,#8]; this
4702C4:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4702C6:  STRD.W          R6, R6, [SP,#0x48+var_28]
4702CA:  MOV.W           R8, #0xFF
4702CE:  STR             R1, [SP,#0x48+var_20]
4702D0:  MOVS            R1, #0xFF
4702D2:  STRD.W          R6, R1, [SP,#0x48+var_48]; unsigned __int8
4702D6:  MOV             R1, R9; float
4702D8:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4702DC:  LDR             R0, [R4,#8]
4702DE:  MOV             R1, #0x3E4CCCD0
4702E6:  STRD.W          R6, R6, [SP,#0x48+var_28]
4702EA:  STR             R1, [SP,#0x48+var_20]
4702EC:  MOVS            R1, #1
4702EE:  ADDS            R0, #0x14; this
4702F0:  ADD             R2, SP, #0x48+var_28; CVector *
4702F2:  STRD.W          R1, R8, [SP,#0x48+var_48]; unsigned __int8
4702F6:  MOV             R1, R9; float
4702F8:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4702FA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4702FE:  LDR             R0, [R4,#8]
470300:  MOV             R1, #0x3F19999A
470308:  ADD             R2, SP, #0x48+var_28; CVector *
47030A:  ADDS            R0, #0x28 ; '('; this
47030C:  STRD.W          R6, R6, [SP,#0x48+var_28]
470310:  STR             R1, [SP,#0x48+var_20]
470312:  MOV             R11, R1
470314:  MOV             R1, R9; float
470316:  MOVS            R3, #0x3E ; '>'; unsigned __int8
470318:  STRD.W          R10, R8, [SP,#0x48+var_48]; unsigned __int8
47031C:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470320:  MOVS            R1, #0
470322:  LDR             R0, [R4,#0x10]; this
470324:  MOVT            R1, #0xBF80
470328:  STRD.W          R6, R6, [SP,#0x48+var_28]
47032C:  STR             R6, [SP,#0x48+var_20]
47032E:  MOV             R8, R1
470330:  STRD.W          R6, R6, [SP,#0x48+var_34]
470334:  ADD             R2, SP, #0x48+var_34; CVector *
470336:  STR             R1, [SP,#0x48+var_2C]
470338:  ADD             R1, SP, #0x48+var_28; CVector *
47033A:  BLX             j__ZN8CColLine3SetERK7CVectorS2_; CColLine::Set(CVector const&,CVector const&)
47033E:  LDR             R0, [R4,#0x10]
470340:  MOV.W           R1, #0x3F800000
470344:  STRD.W          R6, R6, [SP,#0x48+var_28]
470348:  ADD             R2, SP, #0x48+var_34; CVector *
47034A:  STR             R6, [SP,#0x48+var_20]
47034C:  ADDS            R0, #0x20 ; ' '; this
47034E:  STRD.W          R6, R6, [SP,#0x48+var_34]
470352:  STR             R1, [SP,#0x48+var_2C]
470354:  ADD             R1, SP, #0x48+var_28; CVector *
470356:  BLX             j__ZN8CColLine3SetERK7CVectorS2_; CColLine::Set(CVector const&,CVector const&)
47035A:  ADD.W           R0, R5, #0x18; this
47035E:  ADD             R2, SP, #0x48+var_28; CVector *
470360:  MOV.W           R1, #0x3F800000; float
470364:  STRB            R6, [R4,#6]
470366:  STRD.W          R6, R6, [SP,#0x48+var_28]
47036A:  STR             R6, [SP,#0x48+var_20]
47036C:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470370:  MOVW            R0, #0x3333
470374:  ADD             R1, SP, #0x48+var_28; CVector *
470376:  MOVT            R0, #0xBEB3
47037A:  ADD             R2, SP, #0x48+var_34; CVector *
47037C:  STRD.W          R0, R0, [SP,#0x48+var_28]
470380:  MOV             R0, #0x3F733333
470388:  STR.W           R8, [SP,#0x48+var_20]
47038C:  STRD.W          R9, R9, [SP,#0x48+var_34]
470390:  STR             R0, [SP,#0x48+var_2C]
470392:  MOV             R0, R5; this
470394:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
470398:  LDR.W           R0, =(_ZN14CTempColModels15ms_colModelPed2E_ptr - 0x4703A6)
47039C:  MOVS            R1, #9; int
47039E:  MOVS            R2, #0; int
4703A0:  MOVS            R3, #2; int
4703A2:  ADD             R0, PC; _ZN14CTempColModels15ms_colModelPed2E_ptr
4703A4:  STRB.W          R6, [R5,#(byte_796540 - 0x796518)]
4703A8:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4703AC:  LDR             R4, [R0]; CTempColModels::ms_colModelPed2 ...
4703AE:  STR             R6, [SP,#0x48+var_40]; bool
4703B0:  STR             R4, [SP,#0x48+var_38]
4703B2:  MOV             R0, R4; this
4703B4:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
4703B8:  LDR.W           R10, [R4,#(dword_796574 - 0x796548)]
4703BC:  MOV             R1, #0xBE4CCCCC
4703C4:  ADD             R2, SP, #0x48+var_28; CVector *
4703C6:  MOVS            R4, #0xFF
4703C8:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4703CA:  LDR.W           R0, [R10,#8]; this
4703CE:  STR             R1, [SP,#0x48+var_20]
4703D0:  MOV             R1, R9; float
4703D2:  STRD.W          R6, R6, [SP,#0x48+var_28]
4703D6:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
4703D8:  STR             R4, [SP,#0x48+var_44]; unsigned __int8
4703DA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4703DE:  LDR.W           R0, [R10,#8]
4703E2:  MOV             R1, #0x3E4CCCD0
4703EA:  STRD.W          R6, R6, [SP,#0x48+var_28]
4703EE:  STR             R1, [SP,#0x48+var_20]
4703F0:  MOVS            R1, #1
4703F2:  ADDS            R0, #0x14; this
4703F4:  ADD             R2, SP, #0x48+var_28; CVector *
4703F6:  STRD.W          R1, R4, [SP,#0x48+var_48]; unsigned __int8
4703FA:  MOV             R1, R9; float
4703FC:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4703FE:  MOVS            R4, #0xFF
470400:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470404:  LDR.W           R0, [R10,#8]
470408:  MOVS            R1, #2
47040A:  ADD             R2, SP, #0x48+var_28; CVector *
47040C:  STRD.W          R6, R6, [SP,#0x48+var_28]
470410:  ADDS            R0, #0x28 ; '('; this
470412:  STR.W           R11, [SP,#0x48+var_20]
470416:  STRD.W          R1, R4, [SP,#0x48+var_48]; unsigned __int8
47041A:  MOV             R1, R9; float
47041C:  MOVS            R3, #0x3E ; '>'; unsigned __int8
47041E:  MOVS            R4, #0xFF
470420:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470424:  MOVW            R8, #0x51EC
470428:  LDR.W           R0, [R10,#8]
47042C:  STR.W           R9, [SP,#0x48+var_24]
470430:  MOV             R5, R9
470432:  MOVT            R8, #0x3E38
470436:  MOV.W           R11, #0x3F400000
47043A:  MOV.W           R9, #6
47043E:  STR.W           R8, [SP,#0x48+var_28]
470442:  STR.W           R11, [SP,#0x48+var_20]
470446:  ADDS            R0, #0x3C ; '<'; this
470448:  STRD.W          R9, R4, [SP,#0x48+var_48]; unsigned __int8
47044C:  MOV             R4, #0x3E051EB8
470454:  ADD             R2, SP, #0x48+var_28; CVector *
470456:  MOV             R1, R4; float
470458:  MOVS            R3, #0x3E ; '>'; unsigned __int8
47045A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47045E:  LDR.W           R0, [R10,#8]
470462:  MOV.W           R1, #0x3F000000
470466:  STR.W           R8, [SP,#0x48+var_28]
47046A:  ADD             R2, SP, #0x48+var_28; CVector *
47046C:  STRD.W          R1, R11, [SP,#0x48+var_24]
470470:  MOVS            R1, #0xFF
470472:  ADDS            R0, #0x50 ; 'P'; this
470474:  STR.W           R9, [SP,#0x48+var_48]; unsigned __int8
470478:  STR             R1, [SP,#0x48+var_44]; int
47047A:  MOV             R1, R4; float
47047C:  MOVS            R3, #0x3E ; '>'; unsigned __int8
47047E:  MOV.W           R9, #0xFF
470482:  MOV             R8, R4
470484:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470488:  LDR.W           R0, [R10,#8]
47048C:  ADD             R2, SP, #0x48+var_28; CVector *
47048E:  STR             R5, [SP,#0x48+var_24]
470490:  MOVW            R5, #0x51EC
470494:  ADDS            R0, #0x64 ; 'd'; this
470496:  MOVT            R5, #0xBE38
47049A:  MOVS            R4, #5
47049C:  MOV             R1, R8; float
47049E:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4704A0:  STR             R5, [SP,#0x48+var_28]
4704A2:  STR.W           R11, [SP,#0x48+var_20]
4704A6:  STRD.W          R4, R9, [SP,#0x48+var_48]; unsigned __int8
4704AA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4704AE:  LDR.W           R0, [R10,#8]
4704B2:  MOV.W           R1, #0x3F000000
4704B6:  ADD             R2, SP, #0x48+var_28; CVector *
4704B8:  STR             R5, [SP,#0x48+var_28]
4704BA:  ADDS            R0, #0x78 ; 'x'; this
4704BC:  STR.W           R11, [SP,#0x48+var_20]
4704C0:  STR             R1, [SP,#0x48+var_24]
4704C2:  MOV             R1, R8; float
4704C4:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4704C6:  MOV.W           R5, #0x3F000000
4704CA:  STRD.W          R4, R9, [SP,#0x48+var_48]; unsigned __int8
4704CE:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4704D2:  MOVW            R1, #0x6668
4704D6:  LDR.W           R0, [R10,#8]
4704DA:  MOVT            R1, #0x3EE6
4704DE:  ADD             R2, SP, #0x48+var_28; CVector *
4704E0:  STR             R1, [SP,#0x48+var_20]
4704E2:  MOVS            R1, #8
4704E4:  STRD.W          R6, R5, [SP,#0x48+var_28]
4704E8:  ADDS            R0, #0x8C; this
4704EA:  STRD.W          R1, R9, [SP,#0x48+var_48]; unsigned __int8
4704EE:  MOV             R1, #0x3E4CCCCD; float
4704F6:  MOVS            R3, #0x3E ; '>'; unsigned __int8
4704F8:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4704FC:  MOVW            R1, #0xCCCD
470500:  LDR.W           R0, [R10,#8]
470504:  MOVT            R1, #0x3F0C
470508:  MOVW            R4, #0x3333
47050C:  STR             R1, [SP,#0x48+var_24]
47050E:  MOV             R1, #0x3E4CCCD0
470516:  ADDS            R0, #0xA0; this
470518:  STR             R1, [SP,#0x48+var_20]
47051A:  MOVS            R1, #4
47051C:  ADD             R2, SP, #0x48+var_28; CVector *
47051E:  MOVT            R4, #0x3EB3
470522:  STR             R6, [SP,#0x48+var_28]
470524:  MOVS            R3, #0x3E ; '>'; unsigned __int8
470526:  STRD.W          R1, R9, [SP,#0x48+var_48]; unsigned __int8
47052A:  MOV             R1, R4; float
47052C:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470530:  LDR.W           R0, [R10,#0x10]; this
470534:  MOVW            R8, #0
470538:  ADD             R1, SP, #0x48+var_28; CVector *
47053A:  ADD             R2, SP, #0x48+var_34; CVector *
47053C:  MOVT            R8, #0xBF80
470540:  STRD.W          R6, R6, [SP,#0x48+var_28]
470544:  STR             R6, [SP,#0x48+var_20]
470546:  STRD.W          R6, R6, [SP,#0x48+var_34]
47054A:  STR.W           R8, [SP,#0x48+var_2C]
47054E:  BLX             j__ZN8CColLine3SetERK7CVectorS2_; CColLine::Set(CVector const&,CVector const&)
470552:  LDR.W           R0, [R10,#0x10]
470556:  MOV.W           R1, #0x3F800000
47055A:  STRD.W          R6, R6, [SP,#0x48+var_28]
47055E:  ADD             R2, SP, #0x48+var_34; CVector *
470560:  STR             R6, [SP,#0x48+var_20]
470562:  ADDS            R0, #0x20 ; ' '; this
470564:  STRD.W          R6, R6, [SP,#0x48+var_34]
470568:  STR             R1, [SP,#0x48+var_2C]
47056A:  ADD             R1, SP, #0x48+var_28; CVector *
47056C:  BLX             j__ZN8CColLine3SetERK7CVectorS2_; CColLine::Set(CVector const&,CVector const&)
470570:  STRB.W          R6, [R10,#6]
470574:  ADD             R2, SP, #0x48+var_28; CVector *
470576:  STRD.W          R6, R6, [SP,#0x48+var_28]
47057A:  MOV.W           R1, #0x3F800000; float
47057E:  LDR             R5, [SP,#0x48+var_38]
470580:  STR             R6, [SP,#0x48+var_20]
470582:  ADD.W           R0, R5, #0x18; this
470586:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
47058A:  MOVW            R0, #0x3333
47058E:  STR.W           R8, [SP,#0x48+var_20]
470592:  MOVT            R0, #0xBEB3
470596:  ADD             R1, SP, #0x48+var_28; CVector *
470598:  STRD.W          R0, R0, [SP,#0x48+var_28]
47059C:  MOV             R9, R0
47059E:  MOVW            R0, #0x3333
4705A2:  ADD             R2, SP, #0x48+var_34; CVector *
4705A4:  MOVT            R0, #0x3F73
4705A8:  STR             R0, [SP,#0x48+var_2C]
4705AA:  MOV             R0, #0x3F666666
4705B2:  STRD.W          R4, R0, [SP,#0x48+var_34]
4705B6:  MOV             R0, R5; this
4705B8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4705BC:  LDR.W           R0, =(_ZN14CTempColModels16ms_colModelDoor1E_ptr - 0x4705CA)
4705C0:  MOVS            R1, #3; int
4705C2:  MOVS            R2, #0; int
4705C4:  MOVS            R3, #0; int
4705C6:  ADD             R0, PC; _ZN14CTempColModels16ms_colModelDoor1E_ptr
4705C8:  STRB.W          R6, [R5,#0x28]
4705CC:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4705D0:  LDR             R4, [R0]; CTempColModels::ms_colModelDoor1 ...
4705D2:  STR             R6, [SP,#0x48+var_40]; bool
4705D4:  MOV             R0, R4; this
4705D6:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
4705DA:  LDR             R5, [R4,#(dword_7965A4 - 0x796578)]
4705DC:  MOVS            R1, #0
4705DE:  MOVW            R10, #0x999A
4705E2:  MOVT            R1, #0xBE80
4705E6:  MOVT            R10, #0x3E19
4705EA:  ADD             R2, SP, #0x48+var_28; CVector *
4705EC:  LDR             R0, [R5,#8]; this
4705EE:  MOV.W           R8, #0xFF
4705F2:  STRD.W          R6, R1, [SP,#0x48+var_28]
4705F6:  MOV             R1, R10; float
4705F8:  MOVS            R3, #0x40 ; '@'; unsigned __int8
4705FA:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
4705FC:  STR.W           R9, [SP,#0x48+var_20]
470600:  STR.W           R8, [SP,#0x48+var_44]; int
470604:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470608:  LDR             R0, [R5,#8]
47060A:  MOV             R1, #0xBF733333
470612:  ADD             R2, SP, #0x48+var_28; CVector *
470614:  ADDS            R0, #0x14; this
470616:  STR.W           R9, [SP,#0x48+var_20]
47061A:  STRD.W          R6, R1, [SP,#0x48+var_28]
47061E:  MOV             R1, R10; float
470620:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470622:  STRD.W          R6, R8, [SP,#0x48+var_48]; unsigned __int8
470626:  MOV.W           R8, #0xFF
47062A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47062E:  LDR             R0, [R5,#8]
470630:  MOV             R1, #0xBF19999A
470638:  ADD             R2, SP, #0x48+var_28; CVector *
47063A:  STR             R1, [SP,#0x48+var_24]
47063C:  MOV             R5, R1
47063E:  MOV.W           R1, #0x3E800000
470642:  ADDS            R0, #0x28 ; '('; this
470644:  STR             R6, [SP,#0x48+var_28]
470646:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470648:  STR             R1, [SP,#0x48+var_20]
47064A:  MOV.W           R1, #0x3E800000; float
47064E:  STRD.W          R6, R8, [SP,#0x48+var_48]; unsigned __int8
470652:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470656:  ADD.W           R0, R4, #0x18; this
47065A:  ADD             R2, SP, #0x48+var_28; CVector *
47065C:  MOV.W           R1, #0x3FC00000; float
470660:  STRD.W          R6, R5, [SP,#0x48+var_28]
470664:  STR             R6, [SP,#0x48+var_20]
470666:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
47066A:  MOVW            R0, #0x999A
47066E:  STR             R6, [SP,#0x48+var_24]
470670:  MOVT            R0, #0xBE99
470674:  ADD             R1, SP, #0x48+var_28; CVector *
470676:  STR             R0, [SP,#0x48+var_28]
470678:  MOV             R0, #0xBF99999A
470680:  ADD             R2, SP, #0x48+var_34; CVector *
470682:  STR             R0, [SP,#0x48+var_30]
470684:  MOV             R0, #0x3E99999A
47068C:  STR             R5, [SP,#0x48+var_20]
47068E:  STR             R0, [SP,#0x48+var_34]
470690:  MOV             R0, #0x3F19999A
470698:  STR             R0, [SP,#0x48+var_2C]
47069A:  MOV             R0, R4; this
47069C:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4706A0:  LDR.W           R0, =(_ZN14CTempColModels18ms_colModelBumper1E_ptr - 0x4706B0)
4706A4:  MOVS            R1, #4; int
4706A6:  STRB.W          R6, [R4,#(byte_7965A0 - 0x796578)]
4706AA:  MOVS            R2, #0; int
4706AC:  ADD             R0, PC; _ZN14CTempColModels18ms_colModelBumper1E_ptr
4706AE:  MOVS            R3, #0; int
4706B0:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4706B4:  LDR             R4, [R0]; CTempColModels::ms_colModelBumper1 ...
4706B6:  STR             R6, [SP,#0x48+var_40]; bool
4706B8:  MOV             R0, R4; this
4706BA:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
4706BE:  LDR             R5, [R4,#(dword_7965D4 - 0x7965A8)]
4706C0:  MOVW            R1, #0x999A
4706C4:  MOVW            R8, #0xCCCD
4706C8:  MOVT            R1, #0x3F59
4706CC:  ADD             R2, SP, #0x48+var_28; CVector *
4706CE:  MOVT            R8, #0xBD4C
4706D2:  LDR             R0, [R5,#8]; this
4706D4:  MOV.W           R11, #0xFF
4706D8:  STR             R1, [SP,#0x48+var_28]
4706DA:  MOV             R1, R10; float
4706DC:  MOVS            R3, #0x40 ; '@'; unsigned __int8
4706DE:  STRD.W          R8, R6, [SP,#0x48+var_24]
4706E2:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
4706E4:  STR.W           R11, [SP,#0x48+var_44]; int
4706E8:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4706EC:  LDR             R0, [R5,#8]
4706EE:  MOVW            R9, #0xCCCD
4706F2:  MOVW            R1, #0xCCCD
4706F6:  MOVT            R9, #0x3D4C
4706FA:  MOVT            R1, #0x3ECC
4706FE:  ADDS            R0, #0x14; this
470700:  ADD             R2, SP, #0x48+var_28; CVector *
470702:  STR.W           R9, [SP,#0x48+var_24]
470706:  STR             R1, [SP,#0x48+var_28]
470708:  MOV             R1, R10; float
47070A:  MOVS            R3, #0x40 ; '@'; unsigned __int8
47070C:  STR             R6, [SP,#0x48+var_20]
47070E:  STRD.W          R6, R11, [SP,#0x48+var_48]; unsigned __int8
470712:  MOV.W           R11, #0xFF
470716:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47071A:  LDR             R0, [R5,#8]
47071C:  MOV             R1, #0xBECCCCCD
470724:  ADD             R2, SP, #0x48+var_28; CVector *
470726:  ADDS            R0, #0x28 ; '('; this
470728:  STR.W           R9, [SP,#0x48+var_24]
47072C:  STR             R1, [SP,#0x48+var_28]
47072E:  MOV             R1, R10; float
470730:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470732:  STR             R6, [SP,#0x48+var_20]
470734:  STRD.W          R6, R11, [SP,#0x48+var_48]; unsigned __int8
470738:  MOV.W           R9, #0xFF
47073C:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470740:  LDR             R0, [R5,#8]
470742:  MOV             R1, #0xBF59999A
47074A:  ADD             R2, SP, #0x48+var_28; CVector *
47074C:  ADDS            R0, #0x3C ; '<'; this
47074E:  STR.W           R8, [SP,#0x48+var_24]
470752:  STR             R1, [SP,#0x48+var_28]
470754:  MOV             R1, R10; float
470756:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470758:  STR             R6, [SP,#0x48+var_20]
47075A:  STRD.W          R6, R9, [SP,#0x48+var_48]; unsigned __int8
47075E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470762:  MOVW            R1, #0xCCCD
470766:  ADD.W           R0, R4, #0x18; this
47076A:  ADD             R2, SP, #0x48+var_28; CVector *
47076C:  MOVT            R1, #0x400C; float
470770:  STRD.W          R6, R6, [SP,#0x48+var_28]
470774:  STR             R6, [SP,#0x48+var_20]
470776:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
47077A:  MOVW            R0, #0x999A
47077E:  ADD             R1, SP, #0x48+var_28; CVector *
470780:  MOVT            R0, #0xBF99
470784:  ADD             R2, SP, #0x48+var_34; CVector *
470786:  STR             R0, [SP,#0x48+var_28]
470788:  MOV             R0, #0xBE99999A
470790:  STR             R0, [SP,#0x48+var_24]
470792:  MOV             R0, #0xBE4CCCCD
47079A:  STR             R0, [SP,#0x48+var_20]
47079C:  MOV             R0, #0x3E99999A
4707A4:  STR             R0, [SP,#0x48+var_30]
4707A6:  MOV             R0, #0x3F99999A
4707AE:  STR             R0, [SP,#0x48+var_34]
4707B0:  MOV             R0, #0x3E4CCCCD
4707B8:  STR             R0, [SP,#0x48+var_2C]
4707BA:  MOV             R0, R4; this
4707BC:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4707C0:  LDR.W           R0, =(_ZN14CTempColModels17ms_colModelPanel1E_ptr - 0x4707D0)
4707C4:  MOVS            R1, #4; int
4707C6:  STRB.W          R6, [R4,#(byte_7965D0 - 0x7965A8)]
4707CA:  MOVS            R2, #0; int
4707CC:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelPanel1E_ptr
4707CE:  MOVS            R3, #0; int
4707D0:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4707D4:  LDR             R4, [R0]; CTempColModels::ms_colModelPanel1 ...
4707D6:  STR             R6, [SP,#0x48+var_40]; bool
4707D8:  MOV             R0, R4; this
4707DA:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
4707DE:  LDR             R5, [R4,#(dword_796604 - 0x7965D8)]
4707E0:  MOV             R1, #0x3EE66666
4707E8:  ADD             R2, SP, #0x48+var_28; CVector *
4707EA:  MOV.W           R11, #0xFF
4707EE:  MOVS            R3, #0x40 ; '@'; unsigned __int8
4707F0:  LDR             R0, [R5,#8]; this
4707F2:  STRD.W          R10, R1, [SP,#0x48+var_28]
4707F6:  MOV             R1, R10; float
4707F8:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
4707FA:  STR             R6, [SP,#0x48+var_20]
4707FC:  STR.W           R11, [SP,#0x48+var_44]; int
470800:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470804:  LDR             R0, [R5,#8]
470806:  MOVW            R9, #0x6666
47080A:  ADD             R2, SP, #0x48+var_28; CVector *
47080C:  MOVT            R9, #0xBEE6
470810:  ADDS            R0, #0x14; this
470812:  MOV             R1, R10; float
470814:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470816:  STRD.W          R10, R9, [SP,#0x48+var_28]
47081A:  STR             R6, [SP,#0x48+var_20]
47081C:  MOV.W           R8, #0xFF
470820:  STRD.W          R6, R11, [SP,#0x48+var_48]; unsigned __int8
470824:  MOV             R11, R10
470826:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47082A:  LDR             R0, [R5,#8]
47082C:  MOVW            R10, #0x999A
470830:  ADD             R2, SP, #0x48+var_28; CVector *
470832:  MOVT            R10, #0xBE19
470836:  ADDS            R0, #0x28 ; '('; this
470838:  MOV             R1, R11; float
47083A:  MOVS            R3, #0x40 ; '@'; unsigned __int8
47083C:  STR.W           R9, [SP,#0x48+var_24]
470840:  STR.W           R10, [SP,#0x48+var_28]
470844:  STR             R6, [SP,#0x48+var_20]
470846:  STRD.W          R6, R8, [SP,#0x48+var_48]; unsigned __int8
47084A:  MOV.W           R8, #0xFF
47084E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470852:  LDR             R0, [R5,#8]
470854:  MOV             R1, #0x3EE66666
47085C:  ADD             R2, SP, #0x48+var_28; CVector *
47085E:  ADDS            R0, #0x3C ; '<'; this
470860:  STRD.W          R10, R1, [SP,#0x48+var_28]
470864:  MOV             R1, R11; float
470866:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470868:  STR             R6, [SP,#0x48+var_20]
47086A:  STRD.W          R6, R8, [SP,#0x48+var_48]; unsigned __int8
47086E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470872:  MOVW            R1, #0x3333
470876:  ADD.W           R0, R4, #0x18; this
47087A:  ADD             R2, SP, #0x48+var_28; CVector *
47087C:  MOVT            R1, #0x3FB3; float
470880:  STRD.W          R6, R6, [SP,#0x48+var_28]
470884:  STR             R6, [SP,#0x48+var_20]
470886:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
47088A:  MOVW            R0, #0x999A
47088E:  STR.W           R10, [SP,#0x48+var_20]
470892:  MOVT            R0, #0xBF19
470896:  ADD             R1, SP, #0x48+var_28; CVector *
470898:  STR             R0, [SP,#0x48+var_24]
47089A:  MOV             R0, #0xBE99999A
4708A2:  ADD             R2, SP, #0x48+var_34; CVector *
4708A4:  STR             R0, [SP,#0x48+var_28]
4708A6:  MOV             R0, #0x3F19999A
4708AE:  STR             R0, [SP,#0x48+var_30]
4708B0:  MOV             R0, #0x3E99999A
4708B8:  STR             R0, [SP,#0x48+var_34]
4708BA:  MOV             R0, R4; this
4708BC:  STR.W           R11, [SP,#0x48+var_2C]
4708C0:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4708C4:  LDR.W           R0, =(_ZN14CTempColModels18ms_colModelBonnet1E_ptr - 0x4708D4)
4708C8:  MOVS            R1, #4; int
4708CA:  STRB.W          R6, [R4,#(byte_796600 - 0x7965D8)]
4708CE:  MOVS            R2, #0; int
4708D0:  ADD             R0, PC; _ZN14CTempColModels18ms_colModelBonnet1E_ptr
4708D2:  MOVS            R3, #0; int
4708D4:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4708D8:  LDR             R4, [R0]; CTempColModels::ms_colModelBonnet1 ...
4708DA:  STR             R6, [SP,#0x48+var_40]; bool
4708DC:  STR             R4, [SP,#0x48+var_38]
4708DE:  MOV             R0, R4; this
4708E0:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
4708E4:  LDR             R5, [R4,#(dword_796634 - 0x796608)]
4708E6:  MOVW            R1, #0xCCCD
4708EA:  MOVW            R9, #0xCCCD
4708EE:  MOVW            R4, #0xCCCD
4708F2:  MOVT            R1, #0x3DCC
4708F6:  ADD             R2, SP, #0x48+var_28; CVector *
4708F8:  LDR             R0, [R5,#8]; this
4708FA:  MOVT            R9, #0x3E4C
4708FE:  STR             R1, [SP,#0x48+var_24]
470900:  MOVT            R4, #0xBECC
470904:  MOV.W           R8, #0xFF
470908:  MOV             R1, R9; float
47090A:  MOVS            R3, #0x40 ; '@'; unsigned __int8
47090C:  STR             R4, [SP,#0x48+var_28]
47090E:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
470910:  STR             R6, [SP,#0x48+var_20]
470912:  STR.W           R8, [SP,#0x48+var_44]; unsigned __int8
470916:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47091A:  LDR             R0, [R5,#8]
47091C:  MOVW            R11, #0x6666
470920:  ADD             R2, SP, #0x48+var_28; CVector *
470922:  MOVT            R11, #0x3F66
470926:  ADDS            R0, #0x14; this
470928:  MOV             R1, R9; float
47092A:  MOVS            R3, #0x40 ; '@'; unsigned __int8
47092C:  STRD.W          R4, R11, [SP,#0x48+var_28]
470930:  STR             R6, [SP,#0x48+var_20]
470932:  MOV.W           R10, #0xFF
470936:  STRD.W          R6, R8, [SP,#0x48+var_48]; unsigned __int8
47093A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47093E:  LDR             R0, [R5,#8]
470940:  MOVW            R1, #0xCCCD
470944:  MOVW            R8, #0xCCCD
470948:  MOVT            R1, #0x3DCC
47094C:  MOVT            R8, #0x3ECC
470950:  ADDS            R0, #0x28 ; '('; this
470952:  ADD             R2, SP, #0x48+var_28; CVector *
470954:  STR             R1, [SP,#0x48+var_24]
470956:  MOV             R4, R8
470958:  MOV             R1, R9; float
47095A:  MOVS            R3, #0x40 ; '@'; unsigned __int8
47095C:  STR             R4, [SP,#0x48+var_28]
47095E:  STR             R6, [SP,#0x48+var_20]
470960:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470964:  MOV.W           R10, #0xFF
470968:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
47096C:  LDR             R0, [R5,#8]
47096E:  ADD             R2, SP, #0x48+var_28; CVector *
470970:  MOV             R1, R9; float
470972:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470974:  ADDS            R0, #0x3C ; '<'; this
470976:  STRD.W          R4, R11, [SP,#0x48+var_28]
47097A:  STR             R6, [SP,#0x48+var_20]
47097C:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470980:  MOV.W           R10, #0xFF
470984:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470988:  MOV.W           R0, #0x3F000000
47098C:  MOVW            R1, #0x999A
470990:  STRD.W          R6, R0, [SP,#0x48+var_28]
470994:  ADD             R2, SP, #0x48+var_28; CVector *
470996:  LDR             R4, [SP,#0x48+var_38]
470998:  MOVT            R1, #0x3FD9; float
47099C:  STR             R6, [SP,#0x48+var_20]
47099E:  ADD.W           R0, R4, #0x18; this
4709A2:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
4709A6:  MOVW            R0, #0xCCCD
4709AA:  ADD             R1, SP, #0x48+var_28; CVector *
4709AC:  MOVT            R0, #0xBE4C
4709B0:  ADD             R2, SP, #0x48+var_34; CVector *
4709B2:  STR             R0, [SP,#0x48+var_24]
4709B4:  MOV             R0, #0xBF333333
4709BC:  STR             R0, [SP,#0x48+var_28]
4709BE:  MOV             R0, #0xBE99999A
4709C6:  STR             R0, [SP,#0x48+var_20]
4709C8:  MOV             R0, #0x3F99999A
4709D0:  STR             R0, [SP,#0x48+var_30]
4709D2:  MOV             R0, #0x3F333333
4709DA:  STR             R0, [SP,#0x48+var_34]
4709DC:  MOV             R0, #0x3E99999A
4709E4:  STR             R0, [SP,#0x48+var_2C]
4709E6:  MOV             R0, R4; this
4709E8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
4709EC:  LDR             R0, =(_ZN14CTempColModels16ms_colModelBoot1E_ptr - 0x4709FA)
4709EE:  MOVS            R1, #4; int
4709F0:  STRB.W          R6, [R4,#0x28]
4709F4:  MOVS            R2, #0; int
4709F6:  ADD             R0, PC; _ZN14CTempColModels16ms_colModelBoot1E_ptr
4709F8:  MOVS            R3, #0; int
4709FA:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
4709FE:  LDR             R4, [R0]; CTempColModels::ms_colModelBoot1 ...
470A00:  STR             R6, [SP,#0x48+var_40]; bool
470A02:  MOV             R0, R4; this
470A04:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
470A08:  LDR             R5, [R4,#(dword_796664 - 0x796638)]
470A0A:  MOVW            R8, #0xCCCD
470A0E:  MOVW            R11, #0xCCCD
470A12:  ADD             R2, SP, #0x48+var_28; CVector *
470A14:  MOVT            R8, #0xBDCC
470A18:  MOVT            R11, #0xBECC
470A1C:  LDR             R0, [R5,#8]; this
470A1E:  MOV             R1, R9; float
470A20:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470A22:  STR.W           R8, [SP,#0x48+var_24]
470A26:  STR.W           R11, [SP,#0x48+var_28]
470A2A:  STR             R6, [SP,#0x48+var_20]
470A2C:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470A30:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470A34:  LDR             R0, [R5,#8]
470A36:  MOV             R10, #0xBF19999A
470A3E:  ADD             R2, SP, #0x48+var_28; CVector *
470A40:  ADDS            R0, #0x14; this
470A42:  STRD.W          R11, R10, [SP,#0x48+var_28]
470A46:  MOV.W           R11, #0xFF
470A4A:  MOV             R1, R9; float
470A4C:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470A4E:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
470A50:  STR             R6, [SP,#0x48+var_20]
470A52:  STR.W           R11, [SP,#0x48+var_44]; int
470A56:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470A5A:  LDR             R0, [R5,#8]
470A5C:  ADD             R2, SP, #0x48+var_28; CVector *
470A5E:  STR.W           R8, [SP,#0x48+var_24]
470A62:  MOVW            R8, #0xCCCD
470A66:  ADDS            R0, #0x28 ; '('; this
470A68:  MOVT            R8, #0x3ECC
470A6C:  MOV             R1, R9; float
470A6E:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470A70:  STR.W           R8, [SP,#0x48+var_28]
470A74:  STR             R6, [SP,#0x48+var_20]
470A76:  STRD.W          R6, R11, [SP,#0x48+var_48]; unsigned __int8
470A7A:  MOV.W           R11, #0xFF
470A7E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470A82:  LDR             R0, [R5,#8]
470A84:  MOV             R5, R9
470A86:  ADD             R2, SP, #0x48+var_28; CVector *
470A88:  MOV             R1, R5; float
470A8A:  ADDS            R0, #0x3C ; '<'; this
470A8C:  MOVS            R3, #0x40 ; '@'; unsigned __int8
470A8E:  STRD.W          R8, R10, [SP,#0x48+var_28]
470A92:  STR             R6, [SP,#0x48+var_20]
470A94:  STRD.W          R6, R11, [SP,#0x48+var_48]; unsigned __int8
470A98:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470A9C:  MOVW            R0, #0xCCCD
470AA0:  MOVW            R1, #0x3333
470AA4:  MOVT            R0, #0xBECC
470AA8:  ADD             R2, SP, #0x48+var_28; CVector *
470AAA:  STRD.W          R6, R0, [SP,#0x48+var_28]
470AAE:  ADD.W           R0, R4, #0x18; this
470AB2:  MOVT            R1, #0x3FB3; float
470AB6:  STR             R6, [SP,#0x48+var_20]
470AB8:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470ABC:  MOVW            R0, #0x6666
470AC0:  MOVW            R9, #0x3333
470AC4:  MOVT            R0, #0xBF66
470AC8:  MOVW            R8, #0x999A
470ACC:  STR             R0, [SP,#0x48+var_24]
470ACE:  MOVW            R0, #0x3333
470AD2:  MOVW            R10, #0x999A
470AD6:  MOVT            R0, #0x3F33
470ADA:  ADD             R1, SP, #0x48+var_28; CVector *
470ADC:  ADD             R2, SP, #0x48+var_34; CVector *
470ADE:  MOVT            R9, #0xBF33
470AE2:  STR             R5, [SP,#0x48+var_30]
470AE4:  STR             R0, [SP,#0x48+var_34]
470AE6:  MOVT            R10, #0x3E99
470AEA:  MOV             R0, R4; this
470AEC:  MOVT            R8, #0xBE99
470AF0:  STR.W           R9, [SP,#0x48+var_28]
470AF4:  STR.W           R8, [SP,#0x48+var_20]
470AF8:  STR.W           R10, [SP,#0x48+var_2C]
470AFC:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
470B00:  LDR             R0, =(_ZN14CTempColModels17ms_colModelWheel1E_ptr - 0x470B0E)
470B02:  MOVS            R1, #2; int
470B04:  STRB.W          R6, [R4,#(byte_796660 - 0x796638)]
470B08:  MOVS            R2, #0; int
470B0A:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelWheel1E_ptr
470B0C:  MOVS            R3, #0; int
470B0E:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
470B12:  LDR             R4, [R0]; CTempColModels::ms_colModelWheel1 ...
470B14:  STR             R6, [SP,#0x48+var_40]; bool
470B16:  MOV             R0, R4; this
470B18:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
470B1C:  LDR             R5, [R4,#(dword_796694 - 0x796668)]
470B1E:  ADD             R2, SP, #0x48+var_28; CVector *
470B20:  MOV.W           R11, #0xFF
470B24:  MOVS            R3, #0x3C ; '<'; unsigned __int8
470B26:  LDR             R0, [R5,#8]; this
470B28:  STRD.W          R8, R6, [SP,#0x48+var_28]
470B2C:  MOV             R8, #0x3EB33333
470B34:  STR             R6, [SP,#0x48+var_48]; unsigned __int8
470B36:  MOV             R1, R8; float
470B38:  STR             R6, [SP,#0x48+var_20]
470B3A:  STR.W           R11, [SP,#0x48+var_44]; unsigned __int8
470B3E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470B42:  LDR             R0, [R5,#8]
470B44:  ADD             R2, SP, #0x48+var_28; CVector *
470B46:  MOV             R1, R8; float
470B48:  MOVS            R3, #0x3C ; '<'; unsigned __int8
470B4A:  ADDS            R0, #0x14; this
470B4C:  STRD.W          R10, R6, [SP,#0x48+var_28]
470B50:  STR             R6, [SP,#0x48+var_20]
470B52:  MOV.W           R10, #0xFF
470B56:  STRD.W          R6, R11, [SP,#0x48+var_48]; unsigned __int8
470B5A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470B5E:  MOVW            R1, #0x3333
470B62:  ADD.W           R0, R4, #0x18; this
470B66:  ADD             R2, SP, #0x48+var_28; CVector *
470B68:  MOVT            R1, #0x3FB3; float
470B6C:  STRD.W          R6, R6, [SP,#0x48+var_28]
470B70:  STR             R6, [SP,#0x48+var_20]
470B72:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470B76:  MOVW            R0, #0xCCCD
470B7A:  MOVW            R8, #0x3333
470B7E:  STR.W           R9, [SP,#0x48+var_28]
470B82:  MOVW            R9, #0xCCCD
470B86:  MOVT            R0, #0xBECC
470B8A:  ADD             R1, SP, #0x48+var_28; CVector *
470B8C:  ADD             R2, SP, #0x48+var_34; CVector *
470B8E:  STRD.W          R0, R0, [SP,#0x48+var_24]
470B92:  MOVT            R9, #0x3ECC
470B96:  MOV             R0, R4; this
470B98:  MOVT            R8, #0x3F33
470B9C:  STR.W           R9, [SP,#0x48+var_30]
470BA0:  STR.W           R8, [SP,#0x48+var_34]
470BA4:  STR.W           R9, [SP,#0x48+var_2C]
470BA8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
470BAC:  LDR             R0, =(_ZN14CTempColModels20ms_colModelBodyPart1E_ptr - 0x470BBA)
470BAE:  MOVS            R1, #2; int
470BB0:  STRB.W          R6, [R4,#(byte_796690 - 0x796668)]
470BB4:  MOVS            R2, #0; int
470BB6:  ADD             R0, PC; _ZN14CTempColModels20ms_colModelBodyPart1E_ptr
470BB8:  MOVS            R3, #0; int
470BBA:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
470BBE:  LDR             R4, [R0]; CTempColModels::ms_colModelBodyPart1 ...
470BC0:  STR             R6, [SP,#0x48+var_40]; bool
470BC2:  MOV             R0, R4; this
470BC4:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
470BC8:  LDR             R5, [R4,#(dword_7966C4 - 0x796698)]
470BCA:  MOV             R11, #0x3E4CCCCD
470BD2:  ADD             R2, SP, #0x48+var_28; CVector *
470BD4:  MOV             R1, R11; float
470BD6:  MOVS            R3, #0x3E ; '>'; unsigned __int8
470BD8:  LDR             R0, [R5,#8]; this
470BDA:  STRD.W          R6, R6, [SP,#0x48+var_28]
470BDE:  STR             R6, [SP,#0x48+var_20]
470BE0:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470BE4:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470BE8:  LDR             R0, [R5,#8]
470BEA:  MOV             R1, #0x3F4CCCCD
470BF2:  ADD             R2, SP, #0x48+var_28; CVector *
470BF4:  ADDS            R0, #0x14; this
470BF6:  STRD.W          R1, R6, [SP,#0x48+var_28]
470BFA:  MOV             R1, R11; float
470BFC:  MOVS            R3, #0x3E ; '>'; unsigned __int8
470BFE:  STR             R6, [SP,#0x48+var_20]
470C00:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470C04:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470C08:  ADD.W           R0, R4, #0x18; this
470C0C:  ADD             R2, SP, #0x48+var_28; CVector *
470C0E:  MOV             R1, R8; float
470C10:  STRD.W          R9, R6, [SP,#0x48+var_28]
470C14:  STR             R6, [SP,#0x48+var_20]
470C16:  MOV             R9, R8
470C18:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470C1C:  MOVW            R0, #0x999A
470C20:  ADD             R1, SP, #0x48+var_28; CVector *
470C22:  MOVT            R0, #0xBE99
470C26:  ADD             R2, SP, #0x48+var_34; CVector *
470C28:  STRD.W          R0, R0, [SP,#0x48+var_28]
470C2C:  STR             R0, [SP,#0x48+var_20]
470C2E:  MOV             R0, #0x3F8CCCCD
470C36:  STR             R0, [SP,#0x48+var_34]
470C38:  MOV             R0, #0x3E99999A
470C40:  STRD.W          R0, R0, [SP,#0x48+var_30]
470C44:  MOV             R0, R4; this
470C46:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
470C4A:  LDR             R0, =(_ZN14CTempColModels20ms_colModelBodyPart2E_ptr - 0x470C58)
470C4C:  MOVS            R1, #2; int
470C4E:  STRB.W          R6, [R4,#(byte_7966C0 - 0x796698)]
470C52:  MOVS            R2, #0; int
470C54:  ADD             R0, PC; _ZN14CTempColModels20ms_colModelBodyPart2E_ptr
470C56:  MOVS            R3, #0; int
470C58:  STRD.W          R6, R6, [SP,#0x48+var_48]; int
470C5C:  LDR             R4, [R0]; CTempColModels::ms_colModelBodyPart2 ...
470C5E:  STR             R6, [SP,#0x48+var_40]; bool
470C60:  MOV             R0, R4; this
470C62:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
470C66:  LDR             R5, [R4,#(dword_7966F4 - 0x7966C8)]
470C68:  MOV             R8, #0x3E19999A
470C70:  ADD             R2, SP, #0x48+var_28; CVector *
470C72:  MOV             R1, R8; float
470C74:  MOVS            R3, #0x3E ; '>'; unsigned __int8
470C76:  LDR             R0, [R5,#8]; this
470C78:  STRD.W          R6, R6, [SP,#0x48+var_28]
470C7C:  STR             R6, [SP,#0x48+var_20]
470C7E:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470C82:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470C86:  LDR             R0, [R5,#8]
470C88:  MOV.W           R1, #0x3F000000
470C8C:  ADD             R2, SP, #0x48+var_28; CVector *
470C8E:  STR             R6, [SP,#0x48+var_24]
470C90:  ADDS            R0, #0x14; this
470C92:  STR             R1, [SP,#0x48+var_28]
470C94:  MOV             R1, R8; float
470C96:  MOVS            R3, #0x3E ; '>'; unsigned __int8
470C98:  STR             R6, [SP,#0x48+var_20]
470C9A:  STRD.W          R6, R10, [SP,#0x48+var_48]; unsigned __int8
470C9E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
470CA2:  MOV.W           R0, #0x3E800000
470CA6:  STR             R6, [SP,#0x48+var_24]
470CA8:  STR             R0, [SP,#0x48+var_28]
470CAA:  ADD.W           R0, R4, #0x18; this
470CAE:  ADD             R2, SP, #0x48+var_28; CVector *
470CB0:  MOV.W           R1, #0x3F000000; float
470CB4:  STR             R6, [SP,#0x48+var_20]
470CB6:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
470CBA:  MOVW            R0, #0xCCCD
470CBE:  ADD             R1, SP, #0x48+var_28; CVector *
470CC0:  MOVT            R0, #0xBE4C
470CC4:  ADD             R2, SP, #0x48+var_34; CVector *
470CC6:  STRD.W          R0, R0, [SP,#0x48+var_24]
470CCA:  STRD.W          R9, R11, [SP,#0x48+var_34]
470CCE:  STRD.W          R11, R0, [SP,#0x48+var_2C]
470CD2:  MOV             R0, R4; this
470CD4:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
470CD8:  LDR             R0, =(_ZN14CTempColModels17ms_colModelWeaponE_ptr - 0x470CE8)
470CDA:  ADR             R1, dword_470D10
470CDC:  VLD1.64         {D16-D17}, [R1@128]
470CE0:  MOV.W           R1, #0x3E800000
470CE4:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelWeaponE_ptr
470CE6:  STRB.W          R6, [R4,#(byte_7966F0 - 0x7966C8)]
470CEA:  LDR             R0, [R0]; CTempColModels::ms_colModelWeapon ...
470CEC:  STR             R1, [R0,#(dword_79671C - 0x7966F8)]
470CEE:  STR             R1, [R0,#(dword_79670C - 0x7966F8)]
470CF0:  MOV.W           R1, #0x3E800000
470CF4:  VST1.32         {D16-D17}, [R0]!
470CF8:  STR             R1, [R0]
470CFA:  ADD             SP, SP, #0x2C ; ','
470CFC:  POP.W           {R8-R11}
470D00:  POP             {R4-R7,PC}
