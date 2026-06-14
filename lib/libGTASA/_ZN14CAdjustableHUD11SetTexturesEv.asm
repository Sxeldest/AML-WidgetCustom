; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD11SetTexturesEv
; Address            : 0x285670 - 0x2859E4
; =========================================================

285670:  PUSH            {R4-R7,LR}
285672:  ADD             R7, SP, #0xC
285674:  PUSH.W          {R8}
285678:  MOV             R5, R0
28567A:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285682)
28567E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr ; this
285680:  LDR             R4, [R0]; CTouchInterface::m_pWidgets ...
285682:  BLX             j__ZN15CTouchInterface13LoadTextureDBEv; CTouchInterface::LoadTextureDB(void)
285686:  LDR             R1, [R4,#(dword_6F3798 - 0x6F3794)]
285688:  MOV             R8, R0
28568A:  LDR             R0, [R4,#(dword_6F37D0 - 0x6F3794)]
28568C:  CMP             R1, #0
28568E:  ITT NE
285690:  LDRBNE.W        R2, [R1,#0x4E]
285694:  CMPNE           R2, #0
285696:  BEQ             loc_28569C
285698:  LDR             R1, [R1,#8]
28569A:  B               loc_2856AA
28569C:  CMP             R0, #0
28569E:  ITT NE
2856A0:  LDRBNE.W        R1, [R0,#0x4E]
2856A4:  CMPNE           R1, #0
2856A6:  BEQ             loc_2856B6
2856A8:  LDR             R1, [R0,#8]
2856AA:  CMP             R1, #0
2856AC:  ADD.W           R0, R5, #0xAC
2856B0:  IT NE
2856B2:  ADDNE           R1, #0x10
2856B4:  B               loc_2856C4
2856B6:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2856BC)
2856B8:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2856BA:  LDR             R1, [R0]; CTouchInterface::m_pszWidgetTextures ...
2856BC:  ADD.W           R0, R5, #0xAC; this
2856C0:  ADD.W           R1, R1, #0x980; char *
2856C4:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2856C8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2856CE)
2856CA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2856CC:  LDR             R1, [R0]; CTouchInterface::m_pWidgets ...
2856CE:  LDR             R0, [R1,#(dword_6F37E8 - 0x6F3794)]
2856D0:  LDR.W           R1, [R1,#(dword_6F3818 - 0x6F3794)]
2856D4:  CMP             R1, #0
2856D6:  ITT NE
2856D8:  LDRBNE.W        R2, [R1,#0x4E]
2856DC:  CMPNE           R2, #0
2856DE:  BEQ             loc_2856E4
2856E0:  LDR             R1, [R1,#8]
2856E2:  B               loc_2856F2
2856E4:  CMP             R0, #0
2856E6:  ITT NE
2856E8:  LDRBNE.W        R1, [R0,#0x4E]
2856EC:  CMPNE           R1, #0
2856EE:  BEQ             loc_285700
2856F0:  LDR             R1, [R0,#8]
2856F2:  CMP             R1, #0
2856F4:  ADD.W           R0, R5, #0xD4; this
2856F8:  IT NE
2856FA:  ADDNE           R1, #0x10; char *
2856FC:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285700:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x285706)
285702:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
285704:  LDR             R1, [R0]; CTouchInterface::m_pszWidgetTextures ...
285706:  ADD.W           R0, R5, #0x124; this
28570A:  ADD.W           R1, R1, #0xE80; char *
28570E:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285712:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285718)
285714:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285716:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
285718:  LDR             R2, [R0,#(dword_6F3804 - 0x6F3794)]
28571A:  LDRD.W          R1, R0, [R0,#(dword_6F38B0 - 0x6F3794)]
28571E:  CMP             R2, #0
285720:  ITT NE
285722:  LDRBNE.W        R3, [R2,#0x4E]
285726:  CMPNE           R3, #0
285728:  BEQ             loc_28572E
28572A:  LDR             R1, [R2,#8]
28572C:  B               loc_28574E
28572E:  CMP             R1, #0
285730:  ITT NE
285732:  LDRBNE.W        R2, [R1,#0x4E]
285736:  CMPNE           R2, #0
285738:  BEQ             loc_28573E
28573A:  LDR             R1, [R1,#8]
28573C:  B               loc_28574E
28573E:  CMP             R0, #0
285740:  ITT NE
285742:  LDRBNE.W        R1, [R0,#0x4E]
285746:  CMPNE           R1, #0
285748:  BEQ.W           loc_2859D4
28574C:  LDR             R1, [R0,#8]
28574E:  CMP             R1, #0
285750:  ADD.W           R0, R5, #0x14C; this
285754:  IT NE
285756:  ADDNE           R1, #0x10; char *
285758:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28575C:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x285766)
28575E:  ADD.W           R6, R5, #0x2DC
285762:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
285764:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
285766:  ADD.W           R1, R0, #0x580; char *
28576A:  MOV             R0, R6; this
28576C:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285770:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285776)
285772:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285774:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
285776:  LDR             R0, [R0,#(dword_6F380C - 0x6F3794)]
285778:  CMP             R0, #0
28577A:  ITT NE
28577C:  LDRBNE.W        R0, [R0,#0x4E]
285780:  CMPNE           R0, #0
285782:  BEQ             loc_285794
285784:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x28578A)
285786:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
285788:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
28578A:  ADD.W           R1, R0, #0xF00; char *
28578E:  MOV             R0, R6; this
285790:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285794:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x28579A)
285796:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285798:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
28579A:  LDR             R0, [R0,#(dword_6F37F4 - 0x6F3794)]
28579C:  CMP             R0, #0
28579E:  ITT NE
2857A0:  LDRBNE.W        R0, [R0,#0x4E]
2857A4:  CMPNE           R0, #0
2857A6:  BEQ             loc_2857B8
2857A8:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2857AE)
2857AA:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2857AC:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
2857AE:  ADD.W           R1, R0, #0xC00; char *
2857B2:  MOV             R0, R6; this
2857B4:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2857B8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2857BE)
2857BA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2857BC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2857BE:  LDR.W           R0, [R0,#(dword_6F3844 - 0x6F3794)]
2857C2:  CMP             R0, #0
2857C4:  ITT NE
2857C6:  LDRBNE.W        R0, [R0,#0x4E]
2857CA:  CMPNE           R0, #0
2857CC:  BEQ             loc_2857DE
2857CE:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2857D4)
2857D0:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2857D2:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
2857D4:  ADD.W           R1, R0, #0x1600; char *
2857D8:  MOV             R0, R6; this
2857DA:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2857DE:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2857E8)
2857E0:  ADD.W           R6, R5, #0x1C4
2857E4:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2857E6:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
2857E8:  ADD.W           R1, R0, #0x200; char *
2857EC:  MOV             R0, R6; this
2857EE:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2857F2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2857F8)
2857F4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2857F6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2857F8:  LDR.W           R0, [R0,#(dword_6F3848 - 0x6F3794)]
2857FC:  CMP             R0, #0
2857FE:  ITT NE
285800:  LDRBNE.W        R0, [R0,#0x4E]
285804:  CMPNE           R0, #0
285806:  BEQ             loc_285818
285808:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x28580E)
28580A:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
28580C:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
28580E:  ADD.W           R1, R0, #0x1680; char *
285812:  MOV             R0, R6; this
285814:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285818:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x28581E)
28581A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
28581C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
28581E:  LDR.W           R0, [R0,#(dword_6F38A0 - 0x6F3794)]
285822:  CMP             R0, #0
285824:  ITT NE
285826:  LDRBNE.W        R0, [R0,#0x4E]
28582A:  CMPNE           R0, #0
28582C:  BEQ             loc_28583E
28582E:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x285834)
285830:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
285832:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
285834:  ADD.W           R1, R0, #0x2180; char *
285838:  MOV             R0, R6; this
28583A:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28583E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285844)
285840:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285842:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
285844:  LDR             R1, [R0,#(dword_6F37CC - 0x6F3794)]
285846:  LDR.W           R0, [R0,#(dword_6F38B8 - 0x6F3794)]
28584A:  CMP             R1, #0
28584C:  ITT NE
28584E:  LDRBNE.W        R2, [R1,#0x4E]
285852:  CMPNE           R2, #0
285854:  BEQ             loc_285860
285856:  LDR             R2, [R5]
285858:  CMP             R2, #1
28585A:  BNE             loc_285860
28585C:  LDR             R1, [R1,#8]
28585E:  B               loc_28587E
285860:  CMP             R0, #0
285862:  ITT NE
285864:  LDRBNE.W        R1, [R0,#0x4E]
285868:  CMPNE           R1, #0
28586A:  BEQ             loc_285872
28586C:  LDR             R1, [R5]
28586E:  CMP             R1, #1
285870:  BEQ             loc_28587C
285872:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285878)
285874:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285876:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
285878:  LDR             R0, [R0]; CTouchInterface::m_pWidgets
28587A:  CBZ             R0, loc_28588C
28587C:  LDR             R1, [R0,#8]
28587E:  CMP             R1, #0
285880:  ADD.W           R0, R5, #0x84; this
285884:  IT NE
285886:  ADDNE           R1, #0x10; char *
285888:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28588C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285892)
28588E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
285890:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
285892:  LDR.W           R0, [R0,#(dword_6F381C - 0x6F3794)]
285896:  CMP             R0, #0
285898:  ITT NE
28589A:  LDRBNE.W        R0, [R0,#0x4E]
28589E:  CMPNE           R0, #0
2858A0:  BEQ             loc_2858B4
2858A2:  ADD.W           R0, R5, #0x300; this
2858A6:  ADR             R1, aHudCircle; "hud_circle"
2858A8:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2858AC:  ADD.W           R0, R5, #0x304
2858B0:  ADR             R1, aHudSwim; "hud_swim"
2858B2:  B               loc_2858C4
2858B4:  ADD.W           R0, R5, #0x300; this
2858B8:  ADR             R1, aHudCircle; "hud_circle"
2858BA:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2858BE:  ADD.W           R0, R5, #0x304; this
2858C2:  ADR             R1, aSprint; "sprint"
2858C4:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2858C8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2858CE)
2858CA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2858CC:  LDR             R1, [R0]; CTouchInterface::m_pWidgets ...
2858CE:  LDR             R0, [R1,#(dword_6F37D4 - 0x6F3794)]
2858D0:  LDR             R1, [R1,#(dword_6F37FC - 0x6F3794)]
2858D2:  CMP             R1, #0
2858D4:  ITT NE
2858D6:  LDRBNE.W        R2, [R1,#0x4E]
2858DA:  CMPNE           R2, #0
2858DC:  BEQ             loc_2858E2
2858DE:  LDR             R1, [R1,#8]
2858E0:  B               loc_2858E6
2858E2:  CBZ             R0, loc_2858F4
2858E4:  LDR             R1, [R0,#8]
2858E6:  CMP             R1, #0
2858E8:  ADD.W           R0, R5, #0x28C; this
2858EC:  IT NE
2858EE:  ADDNE           R1, #0x10; char *
2858F0:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2858F4:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2858FA)
2858F6:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2858F8:  LDR             R1, [R0]; CTouchInterface::m_pWidgets ...
2858FA:  LDR             R0, [R1,#(dword_6F37D8 - 0x6F3794)]
2858FC:  LDR             R1, [R1,#(dword_6F3800 - 0x6F3794)]
2858FE:  CMP             R1, #0
285900:  ITT NE
285902:  LDRBNE.W        R2, [R1,#0x4E]
285906:  CMPNE           R2, #0
285908:  BEQ             loc_28590E
28590A:  LDR             R1, [R1,#8]
28590C:  B               loc_285912
28590E:  CBZ             R0, loc_285920
285910:  LDR             R1, [R0,#8]
285912:  CMP             R1, #0
285914:  ADD.W           R0, R5, #0x2B4; this
285918:  IT NE
28591A:  ADDNE           R1, #0x10; char *
28591C:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285920:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x28592A)
285922:  ADD.W           R6, R5, #0x1EC
285926:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
285928:  LDR             R0, [R0]; MobileSettings::settings ...
28592A:  LDR             R0, [R0,#(dword_6E045C - 0x6E03F4)]
28592C:  CMP             R0, #1
28592E:  BNE             loc_285954
285930:  ADR             R1, aHudLeft; "hud_left"
285932:  MOV             R0, R6; this
285934:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285938:  ADD.W           R0, R5, #0x214; this
28593C:  ADR             R1, aHudRight; "hud_right"
28593E:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285942:  ADD.W           R0, R5, #0x28C; this
285946:  ADR             R1, aLeftshoot; "leftshoot"
285948:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28594C:  ADD.W           R0, R5, #0x2B4
285950:  ADR             R1, aShoot; "shoot"
285952:  B               loc_285976
285954:  ADR             R1, aLeftshoot; "leftshoot"
285956:  MOV             R0, R6; this
285958:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28595C:  ADD.W           R0, R5, #0x214; this
285960:  ADR             R1, aShoot; "shoot"
285962:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285966:  ADD.W           R0, R5, #0x28C; this
28596A:  ADR             R1, aHudTankLeft; "hud_tank_left"
28596C:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
285970:  ADD.W           R0, R5, #0x2B4; this
285974:  ADR             R1, aHudTankRight; "hud_tank_right"
285976:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28597A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x285980)
28597C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
28597E:  LDR             R1, [R0]; CTouchInterface::m_pWidgets ...
285980:  LDRD.W          R0, R4, [R1,#(dword_6F385C - 0x6F3794)]
285984:  CMP             R0, #0
285986:  ITT NE
285988:  LDRBNE.W        R0, [R0,#0x4E]
28598C:  CMPNE           R0, #0
28598E:  BEQ             loc_2859A4
285990:  LDR             R1, =(byte_61CD7E - 0x28599A)
285992:  ADD.W           R0, R5, #0x1E8; this
285996:  ADD             R1, PC; byte_61CD7E ; char *
285998:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
28599C:  ADR             R1, aHudPlus; "hud_plus"
28599E:  MOV             R0, R6; this
2859A0:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2859A4:  CMP             R4, #0
2859A6:  ITT NE
2859A8:  LDRBNE.W        R0, [R4,#0x4E]
2859AC:  CMPNE           R0, #0
2859AE:  BEQ             loc_2859C6
2859B0:  LDR             R1, =(byte_61CD7E - 0x2859BA)
2859B2:  ADD.W           R0, R5, #0x210; this
2859B6:  ADD             R1, PC; byte_61CD7E ; char *
2859B8:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2859BC:  ADD.W           R0, R5, #0x214; this
2859C0:  ADR             R1, aHudMinus; "hud_minus"
2859C2:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2859C6:  MOV             R0, R8
2859C8:  POP.W           {R8}
2859CC:  POP.W           {R4-R7,LR}
2859D0:  B.W             j_j__ZN15CTouchInterface15UnloadTextureDBEP22TextureDatabaseRuntime; j_CTouchInterface::UnloadTextureDB(TextureDatabaseRuntime *)
2859D4:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2859DA)
2859D6:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2859D8:  LDR             R1, [R0]; CTouchInterface::m_pszWidgetTextures ...
2859DA:  ADD.W           R0, R5, #0x14C
2859DE:  ADD.W           R1, R1, #0x2280
2859E2:  B               loc_285758
