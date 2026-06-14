; =========================================================
; Game Engine Function: _ZN15CTouchInterface18SetupLayoutObjectsEv
; Address            : 0x2AFC94 - 0x2AFE12
; =========================================================

2AFC94:  PUSH            {R4-R7,LR}
2AFC96:  ADD             R7, SP, #0xC
2AFC98:  PUSH.W          {R8}
2AFC9C:  SUB             SP, SP, #8
2AFC9E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCA4)
2AFCA0:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCA2:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCA4:  LDR             R0, [R0,#(dword_6F379C - 0x6F3794)]
2AFCA6:  CBZ             R0, loc_2AFCB8
2AFCA8:  LDR             R1, [R0]
2AFCAA:  LDR             R1, [R1,#4]
2AFCAC:  BLX             R1
2AFCAE:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCB6)
2AFCB0:  MOVS            R1, #0
2AFCB2:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCB4:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCB6:  STR             R1, [R0,#(dword_6F379C - 0x6F3794)]
2AFCB8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCBE)
2AFCBA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCBC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCBE:  LDR.W           R0, [R0,#(dword_6F3814 - 0x6F3794)]
2AFCC2:  CBZ             R0, loc_2AFCD6
2AFCC4:  LDR             R1, [R0]
2AFCC6:  LDR             R1, [R1,#4]
2AFCC8:  BLX             R1
2AFCCA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCD2)
2AFCCC:  MOVS            R1, #0
2AFCCE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCD0:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCD2:  STR.W           R1, [R0,#(dword_6F3814 - 0x6F3794)]
2AFCD6:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCDC)
2AFCD8:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCDA:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCDC:  LDR.W           R0, [R0,#(dword_6F381C - 0x6F3794)]
2AFCE0:  CBZ             R0, loc_2AFCF4
2AFCE2:  LDR             R1, [R0]
2AFCE4:  LDR             R1, [R1,#4]
2AFCE6:  BLX             R1
2AFCE8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCF0)
2AFCEA:  MOVS            R1, #0
2AFCEC:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCEE:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCF0:  STR.W           R1, [R0,#(dword_6F381C - 0x6F3794)]
2AFCF4:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFCFA)
2AFCF6:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFCF8:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFCFA:  LDR             R0, [R0,#(dword_6F3810 - 0x6F3794)]
2AFCFC:  CBZ             R0, loc_2AFD0E
2AFCFE:  LDR             R1, [R0]
2AFD00:  LDR             R1, [R1,#4]
2AFD02:  BLX             R1
2AFD04:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFD0C)
2AFD06:  MOVS            R1, #0
2AFD08:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFD0A:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFD0C:  STR             R1, [R0,#(dword_6F3810 - 0x6F3794)]
2AFD0E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFD14)
2AFD10:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFD12:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFD14:  LDR.W           R0, [R0,#(dword_6F3A0C - 0x6F3794)]
2AFD18:  CBZ             R0, loc_2AFD2C
2AFD1A:  LDR             R1, [R0]
2AFD1C:  LDR             R1, [R1,#4]
2AFD1E:  BLX             R1
2AFD20:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFD28)
2AFD22:  MOVS            R1, #0
2AFD24:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFD26:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFD28:  STR.W           R1, [R0,#(dword_6F3A0C - 0x6F3794)]
2AFD2C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFD32)
2AFD2E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFD30:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFD32:  LDR.W           R0, [R0,#(dword_6F3A34 - 0x6F3794)]
2AFD36:  CBZ             R0, loc_2AFD4A
2AFD38:  LDR             R1, [R0]
2AFD3A:  LDR             R1, [R1,#4]
2AFD3C:  BLX             R1
2AFD3E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFD46)
2AFD40:  MOVS            R1, #0; char *
2AFD42:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFD44:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFD46:  STR.W           R1, [R0,#(dword_6F3A34 - 0x6F3794)]
2AFD4A:  LDR             R0, =(aMobile_1 - 0x2AFD50); "mobile"
2AFD4C:  ADD             R0, PC; "mobile"
2AFD4E:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2AFD52:  MOV             R8, R0
2AFD54:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
2AFD58:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2AFD5E)
2AFD5A:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2AFD5C:  LDR             R0, [R0]; MobileSettings::settings ...
2AFD5E:  LDR.W           R0, [R0,#(dword_6E051C - 0x6E03F4)]
2AFD62:  CMP             R0, #1
2AFD64:  BEQ             loc_2AFDC4
2AFD66:  CMP             R0, #0
2AFD68:  BNE             loc_2AFE02
2AFD6A:  MOVS            R0, #0xA8; unsigned int
2AFD6C:  BLX             _Znwj; operator new(uint)
2AFD70:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFD7A)
2AFD72:  MOVS            R3, #8
2AFD74:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFD7E)
2AFD76:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFD78:  STR             R3, [SP,#0x18+var_14]
2AFD7A:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFD7C:  MOVS            R3, #1
2AFD7E:  LDR             R6, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFD80:  MOVS            R1, #0x40 ; '@'
2AFD82:  LDR             R5, [R2]; CTouchInterface::m_WidgetPosition ...
2AFD84:  STR             R1, [SP,#0x18+var_18]
2AFD86:  ADD.W           R1, R6, #0x100
2AFD8A:  ADD.W           R2, R5, #0x20 ; ' '
2AFD8E:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AFD92:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFD98)
2AFD94:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFD96:  LDR             R4, [R1]; CTouchInterface::m_pWidgets ...
2AFD98:  STR             R0, [R4,#(dword_6F379C - 0x6F3794)]
2AFD9A:  MOVS            R0, #0xA8; unsigned int
2AFD9C:  BLX             _Znwj; operator new(uint)
2AFDA0:  ADDS            R5, #0x30 ; '0'
2AFDA2:  ADD.W           R1, R6, #0x1100
2AFDA6:  MOV             R2, R5
2AFDA8:  BLX             j__ZN17CWidgetButtonSwimC2EPKcRK14WidgetPosition; CWidgetButtonSwim::CWidgetButtonSwim(char const*,WidgetPosition const&)
2AFDAC:  STR.W           R0, [R4,#(dword_6F381C - 0x6F3794)]
2AFDB0:  MOVS            R0, #0xA8; unsigned int
2AFDB2:  BLX             _Znwj; operator new(uint)
2AFDB6:  ADD.W           R1, R6, #0xF80
2AFDBA:  MOV             R2, R5
2AFDBC:  BLX             j__ZN19CWidgetButtonSprintC2EPKcRK14WidgetPosition; CWidgetButtonSprint::CWidgetButtonSprint(char const*,WidgetPosition const&)
2AFDC0:  STR             R0, [R4,#(dword_6F3810 - 0x6F3794)]
2AFDC2:  B               loc_2AFE02
2AFDC4:  MOVS            R0, #0x9C; unsigned int
2AFDC6:  BLX             _Znwj; operator new(uint)
2AFDCA:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFDD2)
2AFDCC:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFDD4)
2AFDCE:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFDD0:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFDD2:  LDR             R4, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFDD4:  LDR             R5, [R2]; CTouchInterface::m_WidgetPosition ...
2AFDD6:  ADD.W           R1, R4, #0x4F00
2AFDDA:  ADD.W           R2, R5, #0x6F0
2AFDDE:  BLX             j__ZN24CWidgetRegionDriveHybridC2EPKcRK14WidgetPosition; CWidgetRegionDriveHybrid::CWidgetRegionDriveHybrid(char const*,WidgetPosition const&)
2AFDE2:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFDE8)
2AFDE4:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFDE6:  LDR             R6, [R1]; CTouchInterface::m_pWidgets ...
2AFDE8:  STR.W           R0, [R6,#(dword_6F3A0C - 0x6F3794)]
2AFDEC:  MOVS            R0, #0xA4; unsigned int
2AFDEE:  BLX             _Znwj; operator new(uint)
2AFDF2:  ADD.W           R1, R4, #0x5400
2AFDF6:  ADD.W           R2, R5, #0x770
2AFDFA:  BLX             j__ZN19CWidgetRegionSprintC2EPKcRK14WidgetPosition; CWidgetRegionSprint::CWidgetRegionSprint(char const*,WidgetPosition const&)
2AFDFE:  STR.W           R0, [R6,#(dword_6F3A34 - 0x6F3794)]
2AFE02:  MOV             R0, R8
2AFE04:  ADD             SP, SP, #8
2AFE06:  POP.W           {R8}
2AFE0A:  POP.W           {R4-R7,LR}
2AFE0E:  B.W             j_j__ZN22TextureDatabaseRuntime10UnregisterEPS_; j_TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
