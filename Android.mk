LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CPP_EXTENSION := .cpp .cc
LOCAL_MODULE    := amltemplates
LOCAL_SRC_FILES := main.cpp mod/logger.cpp mod/config.cpp Command.cpp Menu.cpp \
                   ImGui/imgui.cpp ImGui/imgui_draw.cpp ImGui/imgui_tables.cpp ImGui/imgui_widgets.cpp \
                   ImGui/imguirenderer.cpp ImGui/imguiwrapper.cpp ImGui/RW/RenderWare.cpp
LOCAL_CFLAGS += -O3 -mfloat-abi=softfp -DNDEBUG -std=c++17 -w
LOCAL_C_INCLUDES += . ./ImGui ./ImGui/RW
LOCAL_LDLIBS += -llog
include $(BUILD_SHARED_LIBRARY)