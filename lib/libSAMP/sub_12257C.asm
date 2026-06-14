; =========================================================
; Game Engine Function: sub_12257C
; Address            : 0x12257C - 0x123280
; =========================================================

12257C:  PUSH            {R4-R7,LR}
12257E:  ADD             R7, SP, #0xC
122580:  PUSH.W          {R8-R11}
122584:  SUB             SP, SP, #0x3C
122586:  LDR             R3, =(aVersion100 - 0x122590); "#version 100\n" ...
122588:  MOV             R9, R1
12258A:  MOV             R8, R0
12258C:  ADD             R3, PC; "#version 100\n"
12258E:  BL              sub_123338
122592:  LDR             R4, =(unk_2639B4 - 0x1225A0)
122594:  MOVW            R0, #0x2004
122598:  ADD.W           R5, R8, R0
12259C:  ADD             R4, PC; unk_2639B4
12259E:  MOV             R0, R5; dest
1225A0:  MOV             R1, R4; src
1225A2:  BLX             strcat
1225A6:  BLX             strlen
1225AA:  LDR             R3, =(aPrecisionHighp - 0x1225B8); "precision highp float;" ...
1225AC:  MOV.W           R10, #0xA
1225B0:  STRH.W          R10, [R5,R0]
1225B4:  ADD             R3, PC; "precision highp float;"
1225B6:  BL              sub_123338
1225BA:  MOV             R0, R5; dest
1225BC:  MOV             R1, R4; src
1225BE:  BLX             strcat
1225C2:  BLX             strlen
1225C6:  LDR             R3, =(aUniformMat4Pro - 0x1225D0); "uniform mat4 ProjMatrix;" ...
1225C8:  STRH.W          R10, [R5,R0]
1225CC:  ADD             R3, PC; "uniform mat4 ProjMatrix;"
1225CE:  BL              sub_123338
1225D2:  MOV             R0, R5; dest
1225D4:  MOV             R1, R4; src
1225D6:  BLX             strcat
1225DA:  BLX             strlen
1225DE:  LDR             R3, =(aUniformMat4Vie - 0x1225E8); "uniform mat4 ViewMatrix;" ...
1225E0:  STRH.W          R10, [R5,R0]
1225E4:  ADD             R3, PC; "uniform mat4 ViewMatrix;"
1225E6:  BL              sub_123338
1225EA:  MOV             R0, R5; dest
1225EC:  MOV             R1, R4; src
1225EE:  BLX             strcat
1225F2:  BLX             strlen
1225F6:  LDR             R3, =(aUniformMat4Obj - 0x122600); "uniform mat4 ObjMatrix;" ...
1225F8:  STRH.W          R10, [R5,R0]
1225FC:  ADD             R3, PC; "uniform mat4 ObjMatrix;"
1225FE:  BL              sub_123338
122602:  MOV             R0, R5; dest
122604:  MOV             R1, R4; src
122606:  BLX             strcat
12260A:  BLX             strlen
12260E:  ANDS.W          R11, R9, #2
122612:  STRH.W          R10, [R5,R0]
122616:  STR.W           R11, [SP,#0x58+var_30]
12261A:  BEQ.W           loc_1227F4
12261E:  B               loc_122638
122620:  DCD aVersion100 - 0x122590
122624:  DCD unk_2639B4 - 0x1225A0
122628:  DCD aPrecisionHighp - 0x1225B8
12262C:  DCD aUniformMat4Pro - 0x1225D0
122630:  DCD aUniformMat4Vie - 0x1225E8
122634:  DCD aUniformMat4Obj - 0x122600
122638:  LDR             R3, =(aUniformLowpVec_0 - 0x12263E); "uniform lowp vec3 AmbientLightColor;" ...
12263A:  ADD             R3, PC; "uniform lowp vec3 AmbientLightColor;"
12263C:  BL              sub_123338
122640:  LDR             R4, =(unk_2639B4 - 0x122648)
122642:  MOV             R0, R5; dest
122644:  ADD             R4, PC; unk_2639B4
122646:  MOV             R1, R4; src
122648:  BLX             strcat
12264C:  BLX             strlen
122650:  LDR             R3, =(aUniformLowpVec_1 - 0x12265A); "uniform lowp vec4 MaterialEmissive;" ...
122652:  STRH.W          R10, [R5,R0]
122656:  ADD             R3, PC; "uniform lowp vec4 MaterialEmissive;"
122658:  BL              sub_123338
12265C:  MOV             R0, R5; dest
12265E:  MOV             R1, R4; src
122660:  BLX             strcat
122664:  BLX             strlen
122668:  LDR             R3, =(aUniformLowpVec_2 - 0x122672); "uniform lowp vec4 MaterialAmbient;" ...
12266A:  STRH.W          R10, [R5,R0]
12266E:  ADD             R3, PC; "uniform lowp vec4 MaterialAmbient;"
122670:  BL              sub_123338
122674:  MOV             R0, R5; dest
122676:  MOV             R1, R4; src
122678:  BLX             strcat
12267C:  BLX             strlen
122680:  LDR             R3, =(aUniformLowpVec_3 - 0x12268A); "uniform lowp vec4 MaterialDiffuse;" ...
122682:  STRH.W          R10, [R5,R0]
122686:  ADD             R3, PC; "uniform lowp vec4 MaterialDiffuse;"
122688:  BL              sub_123338
12268C:  MOV             R0, R5; dest
12268E:  MOV             R1, R4; src
122690:  BLX             strcat
122694:  BLX             strlen
122698:  STRH.W          R10, [R5,R0]
12269C:  MOVS.W          R0, R9,LSL#18; int
1226A0:  BPL             loc_122744
1226A2:  B               loc_1226B8
1226A4:  DCD aUniformLowpVec_0 - 0x12263E
1226A8:  DCD unk_2639B4 - 0x122648
1226AC:  DCD aUniformLowpVec_1 - 0x12265A
1226B0:  DCD aUniformLowpVec_2 - 0x122672
1226B4:  DCD aUniformLowpVec_3 - 0x12268A
1226B8:  LDR             R3, =(aUniformLowpVec_4 - 0x1226BE); "uniform lowp vec3 DirLightDiffuseColor;" ...
1226BA:  ADD             R3, PC; "uniform lowp vec3 DirLightDiffuseColor;"
1226BC:  BL              sub_123338
1226C0:  LDR             R4, =(unk_2639B4 - 0x1226C8)
1226C2:  MOV             R0, R5; dest
1226C4:  ADD             R4, PC; unk_2639B4
1226C6:  MOV             R1, R4; src
1226C8:  BLX             strcat
1226CC:  BLX             strlen
1226D0:  LDR             R3, =(aUniformVec3Dir - 0x1226E2); "uniform vec3 DirLightDirection;" ...
1226D2:  MOVW            R1, #0x2004; int
1226D6:  ADD.W           R6, R8, R1
1226DA:  MOV.W           R11, #0xA
1226DE:  ADD             R3, PC; "uniform vec3 DirLightDirection;"
1226E0:  STRH.W          R11, [R6,R0]
1226E4:  BL              sub_123338
1226E8:  MOV             R0, R5; dest
1226EA:  MOV             R1, R4; src
1226EC:  BLX             strcat
1226F0:  BLX             strlen
1226F4:  STRH.W          R11, [R6,R0]
1226F8:  TST.W           R9, #0x1180
1226FC:  LDR.W           R11, [SP,#0x58+var_30]
122700:  BEQ             loc_122744
122702:  B               loc_122710
122704:  DCD aUniformLowpVec_4 - 0x1226BE
122708:  DCD unk_2639B4 - 0x1226C8
12270C:  DCD aUniformVec3Dir - 0x1226E2
122710:  BL              sub_163FC0
122714:  CMP             R0, #3
122716:  BNE             loc_122744
122718:  LDR             R3, =(aUniformVec3Dir_0 - 0x12271E); "uniform vec3 DirBackLightDirection;" ...
12271A:  ADD             R3, PC; "uniform vec3 DirBackLightDirection;"
12271C:  BL              sub_123338
122720:  LDR             R1, =(unk_2639B4 - 0x122728)
122722:  MOV             R0, R5; dest
122724:  ADD             R1, PC; unk_2639B4 ; src
122726:  BLX             strcat
12272A:  BLX             strlen
12272E:  ADD             R0, R8
122730:  MOVW            R1, #0x2004
122734:  MOVS            R2, #0xA
122736:  STRH            R2, [R0,R1]
122738:  B               loc_122744
12273A:  ALIGN 4
12273C:  DCD aUniformVec3Dir_0 - 0x12271E
122740:  DCD unk_2639B4 - 0x122728
122744:  MOVS.W          R0, R9,LSL#17; int
122748:  BPL             loc_12279C
12274A:  LDR             R3, =(aUniformLowpVec_5 - 0x122750); "uniform lowp vec3 DirLight2DiffuseColor"... ...
12274C:  ADD             R3, PC; "uniform lowp vec3 DirLight2DiffuseColor"...
12274E:  BL              sub_123338
122752:  LDR             R4, =(unk_2639B4 - 0x12275A)
122754:  MOV             R0, R5; dest
122756:  ADD             R4, PC; unk_2639B4
122758:  MOV             R1, R4; src
12275A:  BLX             strcat
12275E:  BLX             strlen
122762:  LDR             R3, =(aUniformVec3Dir_1 - 0x122774); "uniform vec3 DirLight2Direction;" ...
122764:  MOVW            R1, #0x2004; int
122768:  ADD.W           R6, R8, R1
12276C:  MOV.W           R11, #0xA
122770:  ADD             R3, PC; "uniform vec3 DirLight2Direction;"
122772:  STRH.W          R11, [R6,R0]
122776:  BL              sub_123338
12277A:  MOV             R0, R5; dest
12277C:  MOV             R1, R4; src
12277E:  BLX             strcat
122782:  BLX             strlen
122786:  STRH.W          R11, [R6,R0]
12278A:  LDR.W           R11, [SP,#0x58+var_30]
12278E:  B               loc_12279C
122790:  DCD aUniformLowpVec_5 - 0x122750
122794:  DCD unk_2639B4 - 0x12275A
122798:  DCD aUniformVec3Dir_1 - 0x122774
12279C:  MOVS.W          R0, R9,LSL#16; int
1227A0:  BPL             loc_1227F4
1227A2:  LDR             R3, =(aUniformLowpVec_6 - 0x1227A8); "uniform lowp vec3 DirLight3DiffuseColor"... ...
1227A4:  ADD             R3, PC; "uniform lowp vec3 DirLight3DiffuseColor"...
1227A6:  BL              sub_123338
1227AA:  LDR             R4, =(unk_2639B4 - 0x1227B2)
1227AC:  MOV             R0, R5; dest
1227AE:  ADD             R4, PC; unk_2639B4
1227B0:  MOV             R1, R4; src
1227B2:  BLX             strcat
1227B6:  BLX             strlen
1227BA:  LDR             R3, =(aUniformVec3Dir_2 - 0x1227CC); "uniform vec3 DirLight3Direction;" ...
1227BC:  MOVW            R1, #0x2004; int
1227C0:  ADD.W           R6, R8, R1
1227C4:  MOV.W           R11, #0xA
1227C8:  ADD             R3, PC; "uniform vec3 DirLight3Direction;"
1227CA:  STRH.W          R11, [R6,R0]
1227CE:  BL              sub_123338
1227D2:  MOV             R0, R5; dest
1227D4:  MOV             R1, R4; src
1227D6:  BLX             strcat
1227DA:  BLX             strlen
1227DE:  STRH.W          R11, [R6,R0]
1227E2:  LDR.W           R11, [SP,#0x58+var_30]
1227E6:  B               loc_1227F4
1227E8:  DCD aUniformLowpVec_6 - 0x1227A8
1227EC:  DCD unk_2639B4 - 0x1227B2
1227F0:  DCD aUniformVec3Dir_2 - 0x1227CC
1227F4:  LDR             R3, =(aAttributeVec3P - 0x1227FA); "attribute vec3 Position;" ...
1227F6:  ADD             R3, PC; "attribute vec3 Position;"
1227F8:  BL              sub_123338
1227FC:  LDR             R4, =(unk_2639B4 - 0x122804)
1227FE:  MOV             R0, R5; dest
122800:  ADD             R4, PC; unk_2639B4
122802:  MOV             R1, R4; src
122804:  BLX             strcat
122808:  BLX             strlen
12280C:  LDR             R3, =(aAttributeVec3N - 0x122816); "attribute vec3 Normal;" ...
12280E:  STRH.W          R10, [R5,R0]
122812:  ADD             R3, PC; "attribute vec3 Normal;"
122814:  BL              sub_123338
122818:  MOV             R0, R5; dest
12281A:  MOV             R1, R4; src
12281C:  BLX             strcat
122820:  BLX             strlen
122824:  STRH.W          R10, [R5,R0]
122828:  ANDS.W          R0, R9, #0x20 ; ' '; int
12282C:  STR             R0, [SP,#0x58+var_24]
12282E:  BEQ             loc_12287C
122830:  B               loc_122840
122832:  ALIGN 4
122834:  DCD aAttributeVec3P - 0x1227FA
122838:  DCD unk_2639B4 - 0x122804
12283C:  DCD aAttributeVec3N - 0x122816
122840:  LDR             R0, =(aAttributeVec4T - 0x12284C); "attribute vec4 TexCoord0;" ...
122842:  MOVS.W          R1, R9,LSL#13; int
122846:  LDR             R3, =(aAttributeVec2T - 0x12284E); "attribute vec2 TexCoord0;" ...
122848:  ADD             R0, PC; "attribute vec4 TexCoord0;"
12284A:  ADD             R3, PC; "attribute vec2 TexCoord0;"
12284C:  IT MI
12284E:  MOVMI           R3, R0; format
122850:  BL              sub_123338
122854:  LDR             R1, =(unk_2639B4 - 0x12285C)
122856:  MOV             R0, R5; dest
122858:  ADD             R1, PC; unk_2639B4 ; src
12285A:  BLX             strcat
12285E:  BLX             strlen
122862:  ADD             R0, R8
122864:  MOVW            R1, #0x2004
122868:  MOVS            R2, #0xA
12286A:  STRH            R2, [R0,R1]
12286C:  B               loc_12287C
12286E:  ALIGN 0x10
122870:  DCD aAttributeVec4T - 0x12284C
122874:  DCD aAttributeVec2T - 0x12284E
122878:  DCD unk_2639B4 - 0x12285C
12287C:  LDR             R3, =(aAttributeVec4G - 0x122882); "attribute vec4 GlobalColor;" ...
12287E:  ADD             R3, PC; "attribute vec4 GlobalColor;"
122880:  BL              sub_123338
122884:  LDR             R1, =(unk_2639B4 - 0x12288C)
122886:  MOV             R0, R5; dest
122888:  ADD             R1, PC; unk_2639B4 ; src
12288A:  BLX             strcat
12288E:  BLX             strlen
122892:  ADD             R0, R8
122894:  MOVW            R6, #0x2004
122898:  MOV.W           R10, #0xA
12289C:  STRH.W          R10, [R0,R6]
1228A0:  ANDS.W          R0, R9, #0x180; int
1228A4:  STR             R0, [SP,#0x58+var_34]
1228A6:  BEQ             loc_122920
1228A8:  B               loc_1228B4
1228AA:  ALIGN 4
1228AC:  DCD aAttributeVec4G - 0x122882
1228B0:  DCD unk_2639B4 - 0x12288C
1228B4:  LDR             R3, =(aAttributeVec4B - 0x1228BA); "attribute vec4 BoneWeight;" ...
1228B6:  ADD             R3, PC; "attribute vec4 BoneWeight;"
1228B8:  BL              sub_123338
1228BC:  LDR             R4, =(unk_2639B4 - 0x1228C4)
1228BE:  MOV             R0, R5; dest
1228C0:  ADD             R4, PC; unk_2639B4
1228C2:  MOV             R1, R4; src
1228C4:  BLX             strcat
1228C8:  BLX             strlen
1228CC:  LDR             R3, =(aAttributeVec4B_0 - 0x1228D4); "attribute vec4 BoneIndices;" ...
1228CE:  ADD             R6, R8
1228D0:  ADD             R3, PC; "attribute vec4 BoneIndices;"
1228D2:  STRH.W          R10, [R6,R0]
1228D6:  BL              sub_123338
1228DA:  MOV             R0, R5; dest
1228DC:  MOV             R1, R4; src
1228DE:  BLX             strcat
1228E2:  BLX             strlen
1228E6:  STRH.W          R10, [R6,R0]
1228EA:  BL              sub_163FA8
1228EE:  LDR             R0, [R0]
1228F0:  LDR             R3, =(aUniformHighpVe - 0x1228FA); "uniform highp vec4 Bones[%d];" ...
1228F2:  ADD.W           R0, R0, R0,LSL#1; int
1228F6:  ADD             R3, PC; "uniform highp vec4 Bones[%d];"
1228F8:  STR             R0, [SP,#0x58+var_58]
1228FA:  BL              sub_123338
1228FE:  MOV             R0, R5; dest
122900:  MOV             R1, R4; src
122902:  BLX             strcat
122906:  BLX             strlen
12290A:  STRH.W          R10, [R6,R0]
12290E:  B               loc_122920
122910:  DCD aAttributeVec4B - 0x1228BA
122914:  DCD unk_2639B4 - 0x1228C4
122918:  DCD aAttributeVec4B_0 - 0x1228D4
12291C:  DCD aUniformHighpVe - 0x1228FA
122920:  LDR             R0, [SP,#0x58+var_24]; int
122922:  CBZ             R0, loc_122944
122924:  LDR             R3, =(aVaryingMediump - 0x12292A); "varying mediump vec2 Out_Tex0;" ...
122926:  ADD             R3, PC; "varying mediump vec2 Out_Tex0;"
122928:  BL              sub_123338
12292C:  LDR             R1, =(unk_2639B4 - 0x122934)
12292E:  MOV             R0, R5; dest
122930:  ADD             R1, PC; unk_2639B4 ; src
122932:  BLX             strcat
122936:  BLX             strlen
12293A:  ADD             R0, R8
12293C:  MOVW            R1, #0x2004; int
122940:  MOVS            R2, #0xA; int
122942:  STRH            R2, [R0,R1]
122944:  ANDS.W          R0, R9, #0x2000000; int
122948:  STR             R0, [SP,#0x58+var_4C]
12294A:  BEQ             loc_12296C
12294C:  LDR             R3, =(aUniformMat3Nor - 0x122952); "uniform mat3 NormalMatrix;" ...
12294E:  ADD             R3, PC; "uniform mat3 NormalMatrix;"
122950:  BL              sub_123338
122954:  LDR             R1, =(unk_2639B4 - 0x12295C)
122956:  MOV             R0, R5; dest
122958:  ADD             R1, PC; unk_2639B4 ; src
12295A:  BLX             strcat
12295E:  BLX             strlen
122962:  ADD             R0, R8
122964:  MOVW            R1, #0x2004; int
122968:  MOVS            R2, #0xA; int
12296A:  STRH            R2, [R0,R1]
12296C:  MOVS            R0, #0x1000040
122972:  ANDS.W          R0, R0, R9; int
122976:  STR             R0, [SP,#0x58+var_20]
122978:  BEQ             loc_1229C6
12297A:  LDR             R3, =(aUniformLowpFlo - 0x122980); "uniform lowp float EnvMapCoefficient;" ...
12297C:  ADD             R3, PC; "uniform lowp float EnvMapCoefficient;"
12297E:  BL              sub_123338
122982:  LDR             R4, =(unk_2639B4 - 0x12298A)
122984:  MOV             R0, R5; dest
122986:  ADD             R4, PC; unk_2639B4
122988:  MOV             R1, R4; src
12298A:  BLX             strcat
12298E:  BLX             strlen
122992:  LDR             R1, =(aVaryingMediump_0 - 0x1229A6); "varying mediump vec2 Out_Tex1;" ...
122994:  MOVW            R2, #0x2004; int
122998:  LDR             R3, =(aVaryingMediump_1 - 0x1229AC); "varying mediump vec3 Out_Refl;" ...
12299A:  ADD.W           R6, R8, R2
12299E:  MOV.W           R10, #0xA
1229A2:  ADD             R1, PC; "varying mediump vec2 Out_Tex1;"
1229A4:  STRH.W          R10, [R6,R0]
1229A8:  ADD             R3, PC; "varying mediump vec3 Out_Refl;"
1229AA:  MOVS.W          R0, R9,LSL#25; int
1229AE:  IT MI
1229B0:  MOVMI           R3, R1; format
1229B2:  BL              sub_123338
1229B6:  MOV             R0, R5; dest
1229B8:  MOV             R1, R4; src
1229BA:  BLX             strcat
1229BE:  BLX             strlen
1229C2:  STRH.W          R10, [R6,R0]
1229C6:  MOV             R0, #0x1880640; int
1229CE:  TST.W           R9, R0
1229D2:  BEQ             loc_1229F4
1229D4:  LDR             R3, =(aUniformVec3Cam - 0x1229DA); "uniform vec3 CameraPosition;" ...
1229D6:  ADD             R3, PC; "uniform vec3 CameraPosition;"
1229D8:  BL              sub_123338
1229DC:  LDR             R1, =(unk_2639B4 - 0x1229E4)
1229DE:  MOV             R0, R5; dest
1229E0:  ADD             R1, PC; unk_2639B4 ; src
1229E2:  BLX             strcat
1229E6:  BLX             strlen
1229EA:  ADD             R0, R8
1229EC:  MOVW            R1, #0x2004; int
1229F0:  MOVS            R2, #0xA; int
1229F2:  STRH            R2, [R0,R1]
1229F4:  ANDS.W          R0, R9, #0x400; int
1229F8:  STR             R0, [SP,#0x58+var_48]
1229FA:  BEQ             loc_122A3C
1229FC:  LDR             R3, =(aVaryingMediump_2 - 0x122A02); "varying mediump float Out_FogAmt;" ...
1229FE:  ADD             R3, PC; "varying mediump float Out_FogAmt;"
122A00:  BL              sub_123338
122A04:  LDR             R4, =(unk_2639B4 - 0x122A0C)
122A06:  MOV             R0, R5; dest
122A08:  ADD             R4, PC; unk_2639B4
122A0A:  MOV             R1, R4; src
122A0C:  BLX             strcat
122A10:  BLX             strlen
122A14:  LDR             R3, =(aUniformVec3Fog - 0x122A26); "uniform vec3 FogDistances;" ...
122A16:  MOVW            R1, #0x2004; int
122A1A:  ADD.W           R6, R8, R1
122A1E:  MOV.W           R10, #0xA
122A22:  ADD             R3, PC; "uniform vec3 FogDistances;"
122A24:  STRH.W          R10, [R6,R0]
122A28:  BL              sub_123338
122A2C:  MOV             R0, R5; dest
122A2E:  MOV             R1, R4; src
122A30:  BLX             strcat
122A34:  BLX             strlen
122A38:  STRH.W          R10, [R6,R0]
122A3C:  ANDS.W          R0, R9, #0x80000; int
122A40:  STR             R0, [SP,#0x58+var_38]
122A42:  BEQ             loc_122AB4
122A44:  LDR             R3, =(aUniformVec3Wat - 0x122A4A); "uniform vec3 WaterSpecs;" ...
122A46:  ADD             R3, PC; "uniform vec3 WaterSpecs;"
122A48:  BL              sub_123338
122A4C:  LDR             R4, =(unk_2639B4 - 0x122A54)
122A4E:  MOV             R0, R5; dest
122A50:  ADD             R4, PC; unk_2639B4
122A52:  MOV             R1, R4; src
122A54:  BLX             strcat
122A58:  BLX             strlen
122A5C:  LDR             R3, =(aVaryingMediump_3 - 0x122A6E); "varying mediump vec2 Out_WaterDetail;" ...
122A5E:  MOVW            R1, #0x2004; int
122A62:  ADD.W           R6, R8, R1
122A66:  MOV.W           R10, #0xA
122A6A:  ADD             R3, PC; "varying mediump vec2 Out_WaterDetail;"
122A6C:  STRH.W          R10, [R6,R0]
122A70:  BL              sub_123338
122A74:  MOV             R0, R5; dest
122A76:  MOV             R1, R4; src
122A78:  BLX             strcat
122A7C:  BLX             strlen
122A80:  LDR             R3, =(aVaryingMediump_4 - 0x122A8A); "varying mediump vec2 Out_WaterDetail2;" ...
122A82:  STRH.W          R10, [R6,R0]
122A86:  ADD             R3, PC; "varying mediump vec2 Out_WaterDetail2;"
122A88:  BL              sub_123338
122A8C:  MOV             R0, R5; dest
122A8E:  MOV             R1, R4; src
122A90:  BLX             strcat
122A94:  BLX             strlen
122A98:  LDR             R3, =(aVaryingMediump_5 - 0x122AA2); "varying mediump float Out_WaterAlphaBle"... ...
122A9A:  STRH.W          R10, [R6,R0]
122A9E:  ADD             R3, PC; "varying mediump float Out_WaterAlphaBle"...
122AA0:  BL              sub_123338
122AA4:  MOV             R0, R5; dest
122AA6:  MOV             R1, R4; src
122AA8:  BLX             strcat
122AAC:  BLX             strlen
122AB0:  STRH.W          R10, [R6,R0]
122AB4:  ANDS.W          R0, R9, #0x100000; int
122AB8:  STR             R0, [SP,#0x58+var_44]
122ABA:  BEQ             loc_122AFC
122ABC:  LDR             R3, =(aAttributeVec4C - 0x122AC2); "attribute vec4 Color2;" ...
122ABE:  ADD             R3, PC; "attribute vec4 Color2;"
122AC0:  BL              sub_123338
122AC4:  LDR             R4, =(unk_2639B4 - 0x122ACC)
122AC6:  MOV             R0, R5; dest
122AC8:  ADD             R4, PC; unk_2639B4
122ACA:  MOV             R1, R4; src
122ACC:  BLX             strcat
122AD0:  BLX             strlen
122AD4:  LDR             R3, =(aUniformLowpFlo_1 - 0x122AE6); "uniform lowp float ColorInterp;" ...
122AD6:  MOVW            R1, #0x2004; int
122ADA:  ADD.W           R6, R8, R1
122ADE:  MOV.W           R10, #0xA
122AE2:  ADD             R3, PC; "uniform lowp float ColorInterp;"
122AE4:  STRH.W          R10, [R6,R0]
122AE8:  BL              sub_123338
122AEC:  MOV             R0, R5; dest
122AEE:  MOV             R1, R4; src
122AF0:  BLX             strcat
122AF4:  BLX             strlen
122AF8:  STRH.W          R10, [R6,R0]
122AFC:  ANDS.W          R0, R9, #0x12; int
122B00:  STR             R0, [SP,#0x58+var_40]
122B02:  BEQ             loc_122B24
122B04:  LDR             R3, =(aVaryingLowpVec - 0x122B0A); "varying lowp vec4 Out_Color;" ...
122B06:  ADD             R3, PC; "varying lowp vec4 Out_Color;"
122B08:  BL              sub_123338
122B0C:  LDR             R1, =(unk_2639B4 - 0x122B14)
122B0E:  MOV             R0, R5; dest
122B10:  ADD             R1, PC; unk_2639B4 ; src
122B12:  BLX             strcat
122B16:  BLX             strlen
122B1A:  ADD             R0, R8
122B1C:  MOVW            R1, #0x2004; int
122B20:  MOVS            R2, #0xA; int
122B22:  STRH            R2, [R0,R1]
122B24:  ANDS.W          R0, R9, #0x2000
122B28:  STR             R0, [SP,#0x58+var_3C]
122B2A:  ITT NE
122B2C:  LDRNE           R0, [SP,#0x58+var_20]; int
122B2E:  CMPNE           R0, #0
122B30:  BEQ             loc_122B52
122B32:  LDR             R3, =(aVaryingLowpVec_0 - 0x122B38); "varying lowp vec3 Out_Spec;" ...
122B34:  ADD             R3, PC; "varying lowp vec3 Out_Spec;"
122B36:  BL              sub_123338
122B3A:  LDR             R1, =(unk_2639B4 - 0x122B42)
122B3C:  MOV             R0, R5; dest
122B3E:  ADD             R1, PC; unk_2639B4 ; src
122B40:  BLX             strcat
122B44:  BLX             strlen
122B48:  ADD             R0, R8; int
122B4A:  MOVW            R1, #0x2004; int
122B4E:  MOVS            R2, #0xA; int
122B50:  STRH            R2, [R0,R1]
122B52:  LDR             R3, =(aVoidMain - 0x122B58); "void main() {" ...
122B54:  ADD             R3, PC; "void main() {"
122B56:  BL              sub_123338
122B5A:  LDR             R1, =(unk_2639B4 - 0x122B62)
122B5C:  MOV             R0, R5; dest
122B5E:  ADD             R1, PC; unk_2639B4 ; src
122B60:  BLX             strcat
122B64:  BLX             strlen
122B68:  ADD             R0, R8
122B6A:  MOVW            R6, #0x2004
122B6E:  MOV.W           R10, #0xA
122B72:  STRD.W          R8, R9, [SP,#0x58+var_2C]
122B76:  STRH.W          R10, [R0,R6]
122B7A:  LDR             R0, [SP,#0x58+var_34]; int
122B7C:  CMP             R0, #0
122B7E:  BEQ.W           loc_122CB6
122B82:  LDR             R3, =(aIvec4Blendinde - 0x122B88); "\tivec4 BlendIndexArray = ivec4(BoneInd"... ...
122B84:  ADD             R3, PC; "\tivec4 BlendIndexArray = ivec4(BoneInd"...
122B86:  BL              sub_123338
122B8A:  LDR             R4, =(unk_2639B4 - 0x122B92)
122B8C:  MOV             R0, R5; dest
122B8E:  ADD             R4, PC; unk_2639B4
122B90:  MOV             R1, R4; src
122B92:  BLX             strcat
122B96:  BLX             strlen
122B9A:  LDR             R3, =(aMat4Bonetoloca - 0x122BA4); "\tmat4 BoneToLocal;" ...
122B9C:  ADD.W           R11, R8, R6
122BA0:  ADD             R3, PC; "\tmat4 BoneToLocal;"
122BA2:  STRH.W          R10, [R11,R0]
122BA6:  BL              sub_123338
122BAA:  MOV             R0, R5; dest
122BAC:  MOV             R1, R4; src
122BAE:  BLX             strcat
122BB2:  BLX             strlen
122BB6:  LDR             R3, =(aBonetolocal0Bo - 0x122BC0); "\tBoneToLocal[0] = Bones[BlendIndexArra"... ...
122BB8:  STRH.W          R10, [R11,R0]
122BBC:  ADD             R3, PC; "\tBoneToLocal[0] = Bones[BlendIndexArra"...
122BBE:  BL              sub_123338
122BC2:  MOV             R0, R5; dest
122BC4:  MOV             R1, R4; src
122BC6:  BLX             strcat
122BCA:  BLX             strlen
122BCE:  LDR             R3, =(aBonetolocal1Bo - 0x122BD8); "\tBoneToLocal[1] = Bones[BlendIndexArra"... ...
122BD0:  STRH.W          R10, [R11,R0]
122BD4:  ADD             R3, PC; "\tBoneToLocal[1] = Bones[BlendIndexArra"...
122BD6:  BL              sub_123338
122BDA:  MOV             R0, R5; dest
122BDC:  MOV             R1, R4; src
122BDE:  BLX             strcat
122BE2:  BLX             strlen
122BE6:  LDR             R3, =(aBonetolocal2Bo - 0x122BF0); "\tBoneToLocal[2] = Bones[BlendIndexArra"... ...
122BE8:  STRH.W          R10, [R11,R0]
122BEC:  ADD             R3, PC; "\tBoneToLocal[2] = Bones[BlendIndexArra"...
122BEE:  BL              sub_123338
122BF2:  MOV             R0, R5; dest
122BF4:  MOV             R1, R4; src
122BF6:  BLX             strcat
122BFA:  BLX             strlen
122BFE:  LDR             R3, =(aBonetolocal3Ve - 0x122C08); "\tBoneToLocal[3] = vec4(0.0,0.0,0.0,1.0"... ...
122C00:  STRH.W          R10, [R11,R0]
122C04:  ADD             R3, PC; "\tBoneToLocal[3] = vec4(0.0,0.0,0.0,1.0"...
122C06:  BL              sub_123338
122C0A:  MOV             R0, R5; dest
122C0C:  MOV             R1, R4; src
122C0E:  BLX             strcat
122C12:  BLX             strlen
122C16:  LDR             R3, =(aBonetolocal0Bo_0 - 0x122C20); "\tBoneToLocal[0] += Bones[BlendIndexArr"... ...
122C18:  STRH.W          R10, [R11,R0]
122C1C:  ADD             R3, PC; "\tBoneToLocal[0] += Bones[BlendIndexArr"...
122C1E:  BL              sub_123338
122C22:  MOV             R0, R5; dest
122C24:  MOV             R1, R4; src
122C26:  BLX             strcat
122C2A:  BLX             strlen
122C2E:  LDR             R3, =(aBonetolocal1Bo_0 - 0x122C38); "\tBoneToLocal[1] += Bones[BlendIndexArr"... ...
122C30:  STRH.W          R10, [R11,R0]
122C34:  ADD             R3, PC; "\tBoneToLocal[1] += Bones[BlendIndexArr"...
122C36:  BL              sub_123338
122C3A:  MOV             R0, R5; dest
122C3C:  MOV             R1, R4; src
122C3E:  BLX             strcat
122C42:  BLX             strlen
122C46:  LDR             R3, =(aBonetolocal2Bo_0 - 0x122C50); "\tBoneToLocal[2] += Bones[BlendIndexArr"... ...
122C48:  STRH.W          R10, [R11,R0]
122C4C:  ADD             R3, PC; "\tBoneToLocal[2] += Bones[BlendIndexArr"...
122C4E:  BL              sub_123338
122C52:  MOV             R0, R5; dest
122C54:  MOV             R1, R4; src
122C56:  BLX             strcat
122C5A:  BLX             strlen
122C5E:  LDR             R3, =(aBonetolocal0Bo_1 - 0x122C68); "\tBoneToLocal[0] += Bones[BlendIndexArr"... ...
122C60:  STRH.W          R10, [R11,R0]
122C64:  ADD             R3, PC; "\tBoneToLocal[0] += Bones[BlendIndexArr"...
122C66:  BL              sub_123338
122C6A:  MOV             R0, R5; dest
122C6C:  MOV             R1, R4; src
122C6E:  BLX             strcat
122C72:  BLX             strlen
122C76:  LDR             R3, =(aBonetolocal1Bo_1 - 0x122C80); "\tBoneToLocal[1] += Bones[BlendIndexArr"... ...
122C78:  STRH.W          R10, [R11,R0]
122C7C:  ADD             R3, PC; "\tBoneToLocal[1] += Bones[BlendIndexArr"...
122C7E:  BL              sub_123338
122C82:  MOV             R0, R5; dest
122C84:  MOV             R1, R4; src
122C86:  BLX             strcat
122C8A:  BLX             strlen
122C8E:  LDR             R3, =(aBonetolocal2Bo_1 - 0x122C98); "\tBoneToLocal[2] += Bones[BlendIndexArr"... ...
122C90:  STRH.W          R10, [R11,R0]
122C94:  ADD             R3, PC; "\tBoneToLocal[2] += Bones[BlendIndexArr"...
122C96:  BL              sub_123338
122C9A:  MOV             R0, R5; dest
122C9C:  MOV             R1, R4; src
122C9E:  BLX             strcat
122CA2:  BLX             strlen
122CA6:  STRH.W          R10, [R11,R0]
122CAA:  MOVS.W          R0, R9,LSL#23; int
122CAE:  BMI             loc_122D64
122CB0:  LDR             R3, =(aVec4WorldposOb - 0x122CB6); "\tvec4 WorldPos = ObjMatrix * (vec4(Pos"... ...
122CB2:  ADD             R3, PC; "\tvec4 WorldPos = ObjMatrix * (vec4(Pos"...
122CB4:  B               loc_122DC4
122CB6:  LDR             R3, =(aVec4WorldposOb_0 - 0x122CBC); "\tvec4 WorldPos = ObjMatrix * vec4(Posi"... ...
122CB8:  ADD             R3, PC; "\tvec4 WorldPos = ObjMatrix * vec4(Posi"...
122CBA:  B               loc_122DC8
122CBC:  DCD aVaryingMediump - 0x12292A
122CC0:  DCD unk_2639B4 - 0x122934
122CC4:  DCD aUniformMat3Nor - 0x122952
122CC8:  DCD unk_2639B4 - 0x12295C
122CCC:  DCD aUniformLowpFlo - 0x122980
122CD0:  DCD unk_2639B4 - 0x12298A
122CD4:  DCD aVaryingMediump_0 - 0x1229A6
122CD8:  DCD aVaryingMediump_1 - 0x1229AC
122CDC:  DCD aUniformVec3Cam - 0x1229DA
122CE0:  DCD unk_2639B4 - 0x1229E4
122CE4:  DCD aVaryingMediump_2 - 0x122A02
122CE8:  DCD unk_2639B4 - 0x122A0C
122CEC:  DCD aUniformVec3Fog - 0x122A26
122CF0:  DCD aUniformVec3Wat - 0x122A4A
122CF4:  DCD unk_2639B4 - 0x122A54
122CF8:  DCD aVaryingMediump_3 - 0x122A6E
122CFC:  DCD aVaryingMediump_4 - 0x122A8A
122D00:  DCD aVaryingMediump_5 - 0x122AA2
122D04:  DCD aAttributeVec4C - 0x122AC2
122D08:  DCD unk_2639B4 - 0x122ACC
122D0C:  DCD aUniformLowpFlo_1 - 0x122AE6
122D10:  DCD aVaryingLowpVec - 0x122B0A
122D14:  DCD unk_2639B4 - 0x122B14
122D18:  DCD aVaryingLowpVec_0 - 0x122B38
122D1C:  DCD unk_2639B4 - 0x122B42
122D20:  DCD aVoidMain - 0x122B58
122D24:  DCD unk_2639B4 - 0x122B62
122D28:  DCD aIvec4Blendinde - 0x122B88
122D2C:  DCD unk_2639B4 - 0x122B92
122D30:  DCD aMat4Bonetoloca - 0x122BA4
122D34:  DCD aBonetolocal0Bo - 0x122BC0
122D38:  DCD aBonetolocal1Bo - 0x122BD8
122D3C:  DCD aBonetolocal2Bo - 0x122BF0
122D40:  DCD aBonetolocal3Ve - 0x122C08
122D44:  DCD aBonetolocal0Bo_0 - 0x122C20
122D48:  DCD aBonetolocal1Bo_0 - 0x122C38
122D4C:  DCD aBonetolocal2Bo_0 - 0x122C50
122D50:  DCD aBonetolocal0Bo_1 - 0x122C68
122D54:  DCD aBonetolocal1Bo_1 - 0x122C80
122D58:  DCD aBonetolocal2Bo_1 - 0x122C98
122D5C:  DCD aVec4WorldposOb - 0x122CB6
122D60:  DCD aVec4WorldposOb_0 - 0x122CBC
122D64:  LDR             R3, =(aBonetolocal0Bo_2 - 0x122D6A); "\tBoneToLocal[0] += Bones[BlendIndexArr"... ...
122D66:  ADD             R3, PC; "\tBoneToLocal[0] += Bones[BlendIndexArr"...
122D68:  BL              sub_123338
122D6C:  LDR             R4, =(unk_2639B4 - 0x122D74)
122D6E:  MOV             R0, R5; dest
122D70:  ADD             R4, PC; unk_2639B4
122D72:  MOV             R1, R4; src
122D74:  BLX             strcat
122D78:  BLX             strlen
122D7C:  LDR             R3, =(aBonetolocal1Bo_2 - 0x122D8E); "\tBoneToLocal[1] += Bones[BlendIndexArr"... ...
122D7E:  MOVW            R1, #0x2004; int
122D82:  ADD.W           R6, R8, R1
122D86:  MOV.W           R11, #0xA
122D8A:  ADD             R3, PC; "\tBoneToLocal[1] += Bones[BlendIndexArr"...
122D8C:  STRH.W          R11, [R6,R0]
122D90:  BL              sub_123338
122D94:  MOV             R0, R5; dest
122D96:  MOV             R1, R4; src
122D98:  BLX             strcat
122D9C:  BLX             strlen
122DA0:  LDR             R3, =(aBonetolocal2Bo_2 - 0x122DAA); "\tBoneToLocal[2] += Bones[BlendIndexArr"... ...
122DA2:  STRH.W          R11, [R6,R0]
122DA6:  ADD             R3, PC; "\tBoneToLocal[2] += Bones[BlendIndexArr"...
122DA8:  BL              sub_123338
122DAC:  MOV             R0, R5; dest
122DAE:  MOV             R1, R4; src
122DB0:  BLX             strcat
122DB4:  BLX             strlen
122DB8:  LDR             R3, =(aVec4WorldposOb - 0x122DC6); "\tvec4 WorldPos = ObjMatrix * (vec4(Pos"... ...
122DBA:  STRH.W          R11, [R6,R0]
122DBE:  MOVW            R6, #0x2004
122DC2:  ADD             R3, PC; "\tvec4 WorldPos = ObjMatrix * (vec4(Pos"...
122DC4:  LDR.W           R11, [SP,#0x58+var_30]
122DC8:  MOV             R8, R11
122DCA:  BL              sub_123338
122DCE:  LDR             R1, =(unk_2639B4 - 0x122DD6)
122DD0:  MOV             R0, R5; dest
122DD2:  ADD             R1, PC; unk_2639B4 ; src
122DD4:  BLX             strcat
122DD8:  BLX             strlen
122DDC:  LDR.W           R9, [SP,#0x58+var_2C]
122DE0:  ADD             R0, R9
122DE2:  STRH.W          R10, [R0,R6]
122DE6:  LDR             R0, [SP,#0x58+var_28]
122DE8:  LSLS            R0, R0, #8; int
122DEA:  BMI             loc_122DF8
122DEC:  LDR             R0, =(aGlPositionProj - 0x122DF4); "\tgl_Position = ProjMatrix * ViewPos;" ...
122DEE:  LDR             R3, =(aVec4ViewposVie - 0x122DF6); "\tvec4 ViewPos = ViewMatrix * WorldPos;" ...
122DF0:  ADD             R0, PC; "\tgl_Position = ProjMatrix * ViewPos;"
122DF2:  ADD             R3, PC; "\tvec4 ViewPos = ViewMatrix * WorldPos;"
122DF4:  MOV             R11, R0
122DF6:  B               loc_122E42
122DF8:  LDR             R3, =(aVec3Reflvector - 0x122DFE); "\tvec3 ReflVector = WorldPos.xyz - Came"... ...
122DFA:  ADD             R3, PC; "\tvec3 ReflVector = WorldPos.xyz - Came"...
122DFC:  BL              sub_123338
122E00:  LDR             R4, =(unk_2639B4 - 0x122E08)
122E02:  MOV             R0, R5; dest
122E04:  ADD             R4, PC; unk_2639B4
122E06:  MOV             R1, R4; src
122E08:  BLX             strcat
122E0C:  BLX             strlen
122E10:  LDR             R3, =(aVec3ReflposNor - 0x122E22); "\tvec3 ReflPos = normalize(ReflVector);" ...
122E12:  MOVW            R1, #0x2004; int
122E16:  ADD.W           R6, R9, R1
122E1A:  MOV.W           R10, #0xA
122E1E:  ADD             R3, PC; "\tvec3 ReflPos = normalize(ReflVector);"
122E20:  STRH.W          R10, [R6,R0]
122E24:  BL              sub_123338
122E28:  MOV             R0, R5; dest
122E2A:  MOV             R1, R4; src
122E2C:  BLX             strcat
122E30:  BLX             strlen
122E34:  LDR             R1, =(aGlPositionVec4 - 0x122E3C); "\tgl_Position = vec4(ReflPos.xy, length"... ...
122E36:  LDR             R3, =(aReflposXyNorma - 0x122E42); "\tReflPos.xy = normalize(ReflPos.xy) * "... ...
122E38:  ADD             R1, PC; "\tgl_Position = vec4(ReflPos.xy, length"...
122E3A:  STRH.W          R10, [R6,R0]
122E3E:  ADD             R3, PC; "\tReflPos.xy = normalize(ReflPos.xy) * "...
122E40:  MOV             R11, R1
122E42:  BL              sub_123338
122E46:  LDR             R6, =(unk_2639B4 - 0x122E4E)
122E48:  MOV             R0, R5; dest
122E4A:  ADD             R6, PC; unk_2639B4
122E4C:  MOV             R1, R6; src
122E4E:  BLX             strcat
122E52:  MOVW            R0, #0x2004
122E56:  ADD.W           R4, R9, R0
122E5A:  MOV             R0, R5; s
122E5C:  BLX             strlen
122E60:  MOV.W           R10, #0xA
122E64:  MOV             R3, R11; format
122E66:  STRH.W          R10, [R4,R0]
122E6A:  BL              sub_123338
122E6E:  MOV             R0, R5; dest
122E70:  MOV             R1, R6; src
122E72:  BLX             strcat
122E76:  BLX             strlen
122E7A:  MOV             R11, R8
122E7C:  CMP.W           R8, #0
122E80:  STRH.W          R10, [R4,R0]
122E84:  BNE             loc_122E94
122E86:  LDR             R0, [SP,#0x58+var_20]
122E88:  LDRD.W          R8, R9, [SP,#0x58+var_2C]
122E8C:  CBZ             R0, loc_122EE4
122E8E:  LDR             R3, =(aVec3Worldnorma - 0x122E94); "vec3 WorldNormal = vec3(0.0, 0.0, 0.0);" ...
122E90:  ADD             R3, PC; "vec3 WorldNormal = vec3(0.0, 0.0, 0.0);"
122E92:  B               loc_122EC8
122E94:  LDR.W           R9, [SP,#0x58+var_28]
122E98:  MOVW            R0, #0x201
122E9C:  AND.W           R1, R9, R0
122EA0:  CMP             R1, R0
122EA2:  BNE             loc_122EB4
122EA4:  ANDS.W          R0, R9, #0xE000
122EA8:  BEQ             loc_122EB4
122EAA:  LDR             R3, =(aVec3Worldnorma_0 - 0x122EB4); "vec3 WorldNormal = normalize(vec3(World"... ...
122EAC:  LDR.W           R8, [SP,#0x58+var_2C]
122EB0:  ADD             R3, PC; "vec3 WorldNormal = normalize(vec3(World"...
122EB2:  B               loc_122EC8
122EB4:  LDR             R0, =(aVec3Worldnorma_1 - 0x122EBE); "vec3 WorldNormal = mat3(ObjMatrix) * (N"... ...
122EB6:  LDR             R3, =(aVec3Worldnorma_2 - 0x122EC0); "vec3 WorldNormal = (ObjMatrix * vec4(No"... ...
122EB8:  LDR             R1, [SP,#0x58+var_34]; int
122EBA:  ADD             R0, PC; "vec3 WorldNormal = mat3(ObjMatrix) * (N"...
122EBC:  ADD             R3, PC; "vec3 WorldNormal = (ObjMatrix * vec4(No"...
122EBE:  CMP             R1, #0
122EC0:  IT NE
122EC2:  MOVNE           R3, R0; format
122EC4:  LDR.W           R8, [SP,#0x58+var_2C]
122EC8:  BL              sub_123338
122ECC:  LDR             R1, =(unk_2639B4 - 0x122ED4)
122ECE:  MOV             R0, R5; dest
122ED0:  ADD             R1, PC; unk_2639B4 ; src
122ED2:  BLX             strcat
122ED6:  BLX             strlen
122EDA:  ADD             R0, R8
122EDC:  MOVW            R1, #0x2004
122EE0:  MOVS            R2, #0xA
122EE2:  STRH            R2, [R0,R1]
122EE4:  BL              sub_163F54
122EE8:  LDR             R1, [SP,#0x58+var_48]; int
122EEA:  CBZ             R1, loc_122F10
122EEC:  LDRB            R0, [R0]; int
122EEE:  CBNZ            R0, loc_122F10
122EF0:  LDR             R3, =(aOutFogamtClamp - 0x122EF6); "Out_FogAmt = clamp((length(WorldPos.xyz"... ...
122EF2:  ADD             R3, PC; "Out_FogAmt = clamp((length(WorldPos.xyz"...
122EF4:  BL              sub_123338
122EF8:  LDR             R1, =(unk_2639B4 - 0x122F00)
122EFA:  MOV             R0, R5; dest
122EFC:  ADD             R1, PC; unk_2639B4 ; src
122EFE:  BLX             strcat
122F02:  BLX             strlen
122F06:  ADD             R0, R8
122F08:  MOVW            R1, #0x2004
122F0C:  MOVS            R2, #0xA
122F0E:  STRH            R2, [R0,R1]
122F10:  LDR             R0, [SP,#0x58+var_24]
122F12:  CBZ             R0, loc_122F5E
122F14:  LDR             R0, =(aTexcoord05120 - 0x122F22); "TexCoord0 / 512.0" ...
122F16:  MOVS.W          R6, R9,LSL#14
122F1A:  LDR             R1, =(aTexcoord0XyTex - 0x122F26); "TexCoord0.xy / TexCoord0.w" ...
122F1C:  LDR             R2, =(aTexcoord0 - 0x122F28); "TexCoord0" ...
122F1E:  ADD             R0, PC; "TexCoord0 / 512.0"
122F20:  LDR             R4, =(aOutTex0Normalm - 0x122F3C); "Out_Tex0 = (NormalMatrix * vec3(%s, 1.0"... ...
122F22:  ADD             R1, PC; "TexCoord0.xy / TexCoord0.w"
122F24:  ADD             R2, PC; "TexCoord0"
122F26:  LDR             R3, =(aOutTex0S - 0x122F3A); "Out_Tex0 = %s;" ...
122F28:  IT MI
122F2A:  MOVMI           R2, R0
122F2C:  MOVS.W          R0, R9,LSL#13
122F30:  IT MI
122F32:  MOVMI           R2, R1; int
122F34:  LDR             R0, [SP,#0x58+var_4C]; int
122F36:  ADD             R3, PC; "Out_Tex0 = %s;"
122F38:  ADD             R4, PC; "Out_Tex0 = (NormalMatrix * vec3(%s, 1.0"...
122F3A:  STR             R2, [SP,#0x58+var_58]
122F3C:  CMP             R0, #0
122F3E:  IT NE
122F40:  MOVNE           R3, R4; format
122F42:  BL              sub_123338
122F46:  LDR             R1, =(unk_2639B4 - 0x122F4E)
122F48:  MOV             R0, R5; dest
122F4A:  ADD             R1, PC; unk_2639B4 ; src
122F4C:  BLX             strcat
122F50:  BLX             strlen
122F54:  ADD             R0, R8
122F56:  MOVW            R1, #0x2004; int
122F5A:  MOVS            R2, #0xA; int
122F5C:  STRH            R2, [R0,R1]
122F5E:  LDR             R0, [SP,#0x58+var_20]; int
122F60:  CBZ             R0, loc_122FC6
122F62:  LDR             R3, =(aVec3Reflvector_0 - 0x122F68); "vec3 reflVector = normalize(WorldPos.xy"... ...
122F64:  ADD             R3, PC; "vec3 reflVector = normalize(WorldPos.xy"...
122F66:  BL              sub_123338
122F6A:  LDR             R4, =(unk_2639B4 - 0x122F72)
122F6C:  MOV             R0, R5; dest
122F6E:  ADD             R4, PC; unk_2639B4
122F70:  MOV             R1, R4; src
122F72:  BLX             strcat
122F76:  BLX             strlen
122F7A:  LDR             R3, =(aReflvectorRefl - 0x122F8C); "reflVector = reflVector - 2.0 * dot(ref"... ...
122F7C:  MOVW            R1, #0x2004; int
122F80:  ADD.W           R6, R8, R1
122F84:  MOV.W           R10, #0xA
122F88:  ADD             R3, PC; "reflVector = reflVector - 2.0 * dot(ref"...
122F8A:  STRH.W          R10, [R6,R0]
122F8E:  BL              sub_123338
122F92:  MOV             R0, R5; dest
122F94:  MOV             R1, R4; src
122F96:  BLX             strcat
122F9A:  BLX             strlen
122F9E:  LDR             R1, =(aOutReflReflvec - 0x122FA6); "Out_Refl = reflVector;" ...
122FA0:  LDR             R3, =(aOutTex1Vec2Len - 0x122FAC); "Out_Tex1 = vec2(length(reflVector.xy), "... ...
122FA2:  ADD             R1, PC; "Out_Refl = reflVector;"
122FA4:  STRH.W          R10, [R6,R0]
122FA8:  ADD             R3, PC; "Out_Tex1 = vec2(length(reflVector.xy), "...
122FAA:  MOVS.W          R0, R9,LSL#7; int
122FAE:  IT MI
122FB0:  MOVMI           R3, R1; format
122FB2:  BL              sub_123338
122FB6:  MOV             R0, R5; dest
122FB8:  MOV             R1, R4; src
122FBA:  BLX             strcat
122FBE:  BLX             strlen
122FC2:  STRH.W          R10, [R6,R0]
122FC6:  LDR             R0, [SP,#0x58+var_44]; int
122FC8:  CBNZ            R0, loc_122FD0
122FCA:  LDR             R4, =(aGlobalcolor - 0x122FD0); "GlobalColor" ...
122FCC:  ADD             R4, PC; "GlobalColor"
122FCE:  B               loc_122FF4
122FD0:  LDR             R3, =(aLowpVec4Interp - 0x122FD6); "lowp vec4 InterpColor = mix(GlobalColor"... ...
122FD2:  ADD             R3, PC; "lowp vec4 InterpColor = mix(GlobalColor"...
122FD4:  BL              sub_123338
122FD8:  LDR             R1, =(unk_2639B4 - 0x122FE0)
122FDA:  MOV             R0, R5; dest
122FDC:  ADD             R1, PC; unk_2639B4 ; src
122FDE:  BLX             strcat
122FE2:  BLX             strlen
122FE6:  LDR             R4, =(aInterpcolor - 0x122FF4); "InterpColor" ...
122FE8:  ADD             R0, R8; int
122FEA:  MOVW            R1, #0x2004; int
122FEE:  MOVS            R2, #0xA; int
122FF0:  ADD             R4, PC; "InterpColor"
122FF2:  STRH            R2, [R0,R1]
122FF4:  CMP.W           R11, #0
122FF8:  BNE             loc_12300C
122FFA:  LDR             R0, [SP,#0x58+var_40]
122FFC:  LDR             R6, [SP,#0x58+var_3C]
122FFE:  CMP             R0, #0
123000:  BEQ.W           loc_123194
123004:  LDR             R3, =(aOutColorS - 0x12300C); "Out_Color = %s;" ...
123006:  STR             R4, [SP,#0x58+var_58]
123008:  ADD             R3, PC; "Out_Color = %s;"
12300A:  B               loc_123178
12300C:  LDR             R3, =(aVec3OutLightin - 0x123012); "vec3 Out_LightingColor;" ...
12300E:  ADD             R3, PC; "vec3 Out_LightingColor;"
123010:  BL              sub_123338
123014:  LDR             R1, =(unk_2639B4 - 0x12301C)
123016:  MOV             R0, R5; dest
123018:  ADD             R1, PC; unk_2639B4 ; src
12301A:  BLX             strcat
12301E:  BLX             strlen
123022:  ADD             R0, R8
123024:  LDR             R6, [SP,#0x58+var_3C]
123026:  MOVW            R1, #0x2004; int
12302A:  MOVS            R2, #0xA; int
12302C:  STRH            R2, [R0,R1]
12302E:  MOVS.W          R0, R9,LSL#28
123032:  BMI             loc_12303A
123034:  LDR             R3, =(aOutLightingcol - 0x12303A); "Out_LightingColor = AmbientLightColor *"... ...
123036:  ADD             R3, PC; "Out_LightingColor = AmbientLightColor *"...
123038:  B               loc_12304C
12303A:  MOVS.W          R0, R9,LSL#22; int
12303E:  BMI             loc_123048
123040:  LDR             R3, =(aOutLightingcol_0 - 0x123048); "Out_LightingColor = AmbientLightColor *"... ...
123042:  STR             R4, [SP,#0x58+var_58]
123044:  ADD             R3, PC; "Out_LightingColor = AmbientLightColor *"...
123046:  B               loc_12304C
123048:  LDR             R3, =(aOutLightingcol_1 - 0x12304E); "Out_LightingColor = AmbientLightColor *"... ...
12304A:  ADD             R3, PC; "Out_LightingColor = AmbientLightColor *"...
12304C:  BL              sub_123338
123050:  LDR             R1, =(unk_2639B4 - 0x123058)
123052:  MOV             R0, R5; dest
123054:  ADD             R1, PC; unk_2639B4 ; src
123056:  BLX             strcat
12305A:  BLX             strlen
12305E:  ADD             R0, R8
123060:  TST.W           R9, #0xE000
123064:  MOVW            R1, #0x2004
123068:  MOV.W           R2, #0xA
12306C:  STRH            R2, [R0,R1]
12306E:  BEQ             loc_1230F4
123070:  CBZ             R6, loc_1230A8
123072:  BL              sub_163FC0
123076:  LDR             R3, =(aOutLightingcol_2 - 0x123080); "Out_LightingColor += (max(dot(DirLightD"... ...
123078:  CMP             R0, #3
12307A:  LDR             R1, =(aOutLightingcol_3 - 0x123082); "Out_LightingColor += max(dot(DirLightDi"... ...
12307C:  ADD             R3, PC; "Out_LightingColor += (max(dot(DirLightD"...
12307E:  ADD             R1, PC; "Out_LightingColor += max(dot(DirLightDi"...
123080:  IT NE
123082:  MOVNE           R3, R1
123084:  TST.W           R9, #0x1180
123088:  IT EQ
12308A:  MOVEQ           R3, R1; format
12308C:  BL              sub_123338
123090:  LDR             R1, =(unk_2639B4 - 0x123098)
123092:  MOV             R0, R5; dest
123094:  ADD             R1, PC; unk_2639B4 ; src
123096:  BLX             strcat
12309A:  BLX             strlen
12309E:  ADD             R0, R8
1230A0:  MOVW            R1, #0x2004; int
1230A4:  MOVS            R2, #0xA; int
1230A6:  STRH            R2, [R0,R1]
1230A8:  MOVS.W          R0, R9,LSL#17; int
1230AC:  BPL             loc_1230CE
1230AE:  LDR             R3, =(aOutLightingcol_4 - 0x1230B4); "Out_LightingColor += max(dot(DirLight2D"... ...
1230B0:  ADD             R3, PC; "Out_LightingColor += max(dot(DirLight2D"...
1230B2:  BL              sub_123338
1230B6:  LDR             R1, =(unk_2639B4 - 0x1230BE)
1230B8:  MOV             R0, R5; dest
1230BA:  ADD             R1, PC; unk_2639B4 ; src
1230BC:  BLX             strcat
1230C0:  BLX             strlen
1230C4:  ADD             R0, R8
1230C6:  MOVW            R1, #0x2004; int
1230CA:  MOVS            R2, #0xA; int
1230CC:  STRH            R2, [R0,R1]
1230CE:  MOVS.W          R0, R9,LSL#16; int
1230D2:  BPL             loc_1230F4
1230D4:  LDR             R3, =(aOutLightingcol_5 - 0x1230DA); "Out_LightingColor += max(dot(DirLight3D"... ...
1230D6:  ADD             R3, PC; "Out_LightingColor += max(dot(DirLight3D"...
1230D8:  BL              sub_123338
1230DC:  LDR             R1, =(unk_2639B4 - 0x1230E4)
1230DE:  MOV             R0, R5; dest
1230E0:  ADD             R1, PC; unk_2639B4 ; src
1230E2:  BLX             strcat
1230E6:  BLX             strlen
1230EA:  ADD             R0, R8
1230EC:  MOVW            R1, #0x2004; int
1230F0:  MOVS            R2, #0xA; int
1230F2:  STRH            R2, [R0,R1]
1230F4:  LDR             R0, [SP,#0x58+var_40]
1230F6:  CMP             R0, #0
1230F8:  BEQ             loc_123194
1230FA:  MOVS.W          R0, R9,LSL#27; int
1230FE:  BMI             loc_123150
123100:  LDR             R3, =(aOutColorVec4Ou - 0x123108); "Out_Color = vec4(Out_LightingColor * Ma"... ...
123102:  STR             R4, [SP,#0x58+var_58]
123104:  ADD             R3, PC; "Out_Color = vec4(Out_LightingColor * Ma"...
123106:  B               loc_123158
123108:  DCD aBonetolocal0Bo_2 - 0x122D6A
12310C:  DCD unk_2639B4 - 0x122D74
123110:  DCD aBonetolocal1Bo_2 - 0x122D8E
123114:  DCD aBonetolocal2Bo_2 - 0x122DAA
123118:  DCD aVec4WorldposOb - 0x122DC6
12311C:  DCD unk_2639B4 - 0x122DD6
123120:  DCD aGlPositionProj - 0x122DF4
123124:  DCD aVec4ViewposVie - 0x122DF6
123128:  DCD aVec3Reflvector - 0x122DFE
12312C:  DCD unk_2639B4 - 0x122E08
123130:  DCD aVec3ReflposNor - 0x122E22
123134:  DCD aGlPositionVec4 - 0x122E3C
123138:  DCD aReflposXyNorma - 0x122E42
12313C:  DCD unk_2639B4 - 0x122E4E
123140:  DCD aVec3Worldnorma - 0x122E94
123144:  DCD aVec3Worldnorma_0 - 0x122EB4
123148:  DCD aVec3Worldnorma_1 - 0x122EBE
12314C:  DCD aVec3Worldnorma_2 - 0x122EC0
123150:  LDR             R3, =(aOutColorVec4Ou_0 - 0x12315A); "Out_Color = vec4((Out_LightingColor.xyz"... ...
123152:  STRD.W          R4, R4, [SP,#0x58+var_58]
123156:  ADD             R3, PC; "Out_Color = vec4((Out_LightingColor.xyz"...
123158:  BL              sub_123338
12315C:  LDR             R1, =(unk_2639B4 - 0x123164)
12315E:  MOV             R0, R5; dest
123160:  ADD             R1, PC; unk_2639B4 ; src
123162:  BLX             strcat
123166:  BLX             strlen
12316A:  LDR             R3, =(aOutColorClampO - 0x123178); "Out_Color = clamp(Out_Color, 0.0, 1.0);" ...
12316C:  ADD             R0, R8; int
12316E:  MOVW            R1, #0x2004; int
123172:  MOVS            R2, #0xA; int
123174:  ADD             R3, PC; "Out_Color = clamp(Out_Color, 0.0, 1.0);"
123176:  STRH            R2, [R0,R1]
123178:  BL              sub_123338
12317C:  LDR             R1, =(unk_2639B4 - 0x123184)
12317E:  MOV             R0, R5; dest
123180:  ADD             R1, PC; unk_2639B4 ; src
123182:  BLX             strcat
123186:  BLX             strlen
12318A:  ADD             R0, R8
12318C:  MOVW            R1, #0x2004
123190:  MOVS            R2, #0xA
123192:  STRH            R2, [R0,R1]
123194:  BL              sub_163F54
123198:  LDR             R1, [SP,#0x58+var_20]
12319A:  CBZ             R1, loc_1231FC
12319C:  CBZ             R6, loc_1231FC
12319E:  LDRB            R0, [R0]
1231A0:  CBNZ            R0, loc_1231FC
1231A2:  BL              sub_163F70
1231A6:  LDRB            R0, [R0]; int
1231A8:  VMOV.F64        D17, #9.0
1231AC:  CMP             R0, #0
1231AE:  VMOV.F64        D16, #10.0
1231B2:  IT EQ
1231B4:  VMOVEQ.F64      D17, D16
1231B8:  LDR             R3, =(aFloatSpecamtMa - 0x1231BE); "float specAmt = max(pow(dot(reflVector,"... ...
1231BA:  ADD             R3, PC; "float specAmt = max(pow(dot(reflVector,"...
1231BC:  VSTR            D17, [SP,#0x58+var_58]
1231C0:  BL              sub_123338
1231C4:  LDR             R4, =(unk_2639B4 - 0x1231CC)
1231C6:  MOV             R0, R5; dest
1231C8:  ADD             R4, PC; unk_2639B4
1231CA:  MOV             R1, R4; src
1231CC:  BLX             strcat
1231D0:  BLX             strlen
1231D4:  LDR             R3, =(aOutSpecSpecamt - 0x1231E6); "Out_Spec = specAmt * DirLightDiffuseCol"... ...
1231D6:  MOVW            R1, #0x2004; int
1231DA:  ADD.W           R6, R8, R1
1231DE:  MOV.W           R9, #0xA
1231E2:  ADD             R3, PC; "Out_Spec = specAmt * DirLightDiffuseCol"...
1231E4:  STRH.W          R9, [R6,R0]
1231E8:  BL              sub_123338
1231EC:  MOV             R0, R5; dest
1231EE:  MOV             R1, R4; src
1231F0:  BLX             strcat
1231F4:  BLX             strlen
1231F8:  STRH.W          R9, [R6,R0]
1231FC:  LDR             R0, [SP,#0x58+var_38]; int
1231FE:  CBZ             R0, loc_123258
123200:  LDR             R3, =(aOutWaterdetail - 0x123206); "Out_WaterDetail = (Out_Tex0 * 4.0) + ve"... ...
123202:  ADD             R3, PC; "Out_WaterDetail = (Out_Tex0 * 4.0) + ve"...
123204:  BL              sub_123338
123208:  LDR             R4, =(unk_2639B4 - 0x123210)
12320A:  MOV             R0, R5; dest
12320C:  ADD             R4, PC; unk_2639B4
12320E:  MOV             R1, R4; src
123210:  BLX             strcat
123214:  BLX             strlen
123218:  LDR             R3, =(aOutWaterdetail_0 - 0x12322A); "Out_WaterDetail2 = (Out_Tex0 * -8.0) + "... ...
12321A:  MOVW            R1, #0x2004; int
12321E:  ADD.W           R6, R8, R1
123222:  MOV.W           R9, #0xA
123226:  ADD             R3, PC; "Out_WaterDetail2 = (Out_Tex0 * -8.0) + "...
123228:  STRH.W          R9, [R6,R0]
12322C:  BL              sub_123338
123230:  MOV             R0, R5; dest
123232:  MOV             R1, R4; src
123234:  BLX             strcat
123238:  BLX             strlen
12323C:  LDR             R3, =(aOutWateralphab - 0x123246); "Out_WaterAlphaBlend = distance(WorldPos"... ...
12323E:  STRH.W          R9, [R6,R0]
123242:  ADD             R3, PC; "Out_WaterAlphaBlend = distance(WorldPos"...
123244:  BL              sub_123338
123248:  MOV             R0, R5; dest
12324A:  MOV             R1, R4; src
12324C:  BLX             strcat
123250:  BLX             strlen
123254:  STRH.W          R9, [R6,R0]
123258:  LDR             R3, =(asc_89E0B - 0x12325E); "}" ...
12325A:  ADD             R3, PC; "}"
12325C:  BL              sub_123338
123260:  LDR             R1, =(unk_2639B4 - 0x123268)
123262:  MOV             R0, R5; dest
123264:  ADD             R1, PC; unk_2639B4 ; src
123266:  BLX             strcat
12326A:  BLX             strlen
12326E:  ADD             R0, R8
123270:  MOVW            R1, #0x2004
123274:  MOVS            R2, #0xA
123276:  STRH            R2, [R0,R1]
123278:  ADD             SP, SP, #0x3C ; '<'
12327A:  POP.W           {R8-R11}
12327E:  POP             {R4-R7,PC}
