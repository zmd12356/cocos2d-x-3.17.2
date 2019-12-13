LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cclua_android

LOCAL_MODULE_FILENAME := libluaccandroid

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../manual/platform/android/CCLuaJavaBridge.cpp \
                   ../manual/platform/android/jni/Cocos2dxLuaJavaBridge.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../.. \
                    $(LOCAL_PATH)/../manual \
                    $(LOCAL_PATH)/../../../../external/lua/tolua \
                    $(LOCAL_PATH)/../manual/platform/android \
                    $(LOCAL_PATH)/../manual/platform/android/jni

LOCAL_EXPORT_LDLIBS := -lGLESv2 \
                       -llog \
                       -landroid

LUA_STATIC_LIB := ext_luajit
LUA_IMPORT_PATH := lua/luajit/prebuilt/android
LUA_INCLUDE_PATH := $(LOCAL_PATH)/../../../../external/lua/luajit/include

LOCAL_STATIC_LIBRARIES := $(LUA_STATIC_LIB)

include $(BUILD_STATIC_LIBRARY)

#==============================================================

include $(CLEAR_VARS)

LOCAL_MODULE    := cclua_static

LOCAL_MODULE_FILENAME := libluacc

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../manual/CCLuaBridge.cpp \
          ../manual/CCLuaEngine.cpp \
          ../manual/CCLuaStack.cpp \
          ../manual/CCLuaValue.cpp \
          ../manual/Cocos2dxLuaLoader.cpp \
          ../manual/LuaBasicConversions.cpp \
          ../manual/lua_module_register.cpp \
          ../auto/lua_cocos2dx_auto.cpp \
          ../auto/lua_cocos2dx_physics_auto.cpp \
          ../auto/lua_cocos2dx_experimental_auto.cpp \
          ../manual/cocos2d/lua_cocos2dx_deprecated.cpp \
          ../manual/cocos2d/lua_cocos2dx_experimental_manual.cpp \
          ../manual/cocos2d/lua_cocos2dx_manual.cpp \
          ../manual/cocos2d/lua_cocos2dx_physics_manual.cpp \
          ../manual/cocos2d/LuaOpengl.cpp \
          ../manual/cocos2d/LuaScriptHandlerMgr.cpp \
          ../manual/tolua_fix.cpp \
          ../../../../external/lua/tolua/tolua_event.c \
          ../../../../external/lua/tolua/tolua_is.c \
          ../../../../external/lua/tolua/tolua_map.c \
          ../../../../external/lua/tolua/tolua_push.c \
          ../../../../external/lua/tolua/tolua_to.c \
          ../../../../external/xxtea/xxtea.cpp \
          ../auto/lua_cocos2dx_audioengine_auto.cpp \
          ../manual/audioengine/lua_cocos2dx_audioengine_manual.cpp

#Component
LOCAL_SRC_FILES += ../manual/CCComponentLua.cpp \

#cocosdenshion
LOCAL_SRC_FILES += ../manual/cocosdenshion/lua_cocos2dx_cocosdenshion_manual.cpp \
                   ../auto/lua_cocos2dx_cocosdenshion_auto.cpp

#network
LOCAL_SRC_FILES += ../manual/network/lua_cocos2dx_network_manual.cpp \
                   ../manual/network/lua_extensions.c \
                   ../manual/network/lua_downloader.cpp \
                   ../manual/network/Lua_web_socket.cpp \
                   ../manual/network/lua_xml_http_request.cpp \
                   ../../../../external/lua/luasocket/auxiliar.c \
                   ../../../../external/lua/luasocket/buffer.c \
                   ../../../../external/lua/luasocket/except.c \
                   ../../../../external/lua/luasocket/inet.c \
                   ../../../../external/lua/luasocket/io.c \
                   ../../../../external/lua/luasocket/luasocket.c \
                   ../../../../external/lua/luasocket/luasocket_scripts.c \
                   ../../../../external/lua/luasocket/mime.c \
                   ../../../../external/lua/luasocket/options.c \
                   ../../../../external/lua/luasocket/select.c \
                   ../../../../external/lua/luasocket/serial.c \
                   ../../../../external/lua/luasocket/tcp.c \
                   ../../../../external/lua/luasocket/timeout.c \
                   ../../../../external/lua/luasocket/udp.c \
                   ../../../../external/lua/luasocket/unix.c \
                   ../../../../external/lua/luasocket/usocket.c

#ui
LOCAL_SRC_FILES += ../manual/ui/lua_cocos2dx_experimental_webview_manual.cpp \
                   ../manual/ui/lua_cocos2dx_experimental_video_manual.cpp \
                   ../manual/ui/lua_cocos2dx_ui_manual.cpp \
                   ../auto/lua_cocos2dx_experimental_video_auto.cpp \
                   ../auto/lua_cocos2dx_ui_auto.cpp \
                   ../auto/lua_cocos2dx_experimental_webview_auto.cpp

#extension
LOCAL_SRC_FILES += ../manual/extension/lua_cocos2dx_extension_manual.cpp \
                   ../auto/lua_cocos2dx_extension_auto.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../../external/lua/tolua \
                    $(LUA_INCLUDE_PATH) \
                    $(LOCAL_PATH)/../../../2d \
                    $(LOCAL_PATH)/../../../network \
                    $(LOCAL_PATH)/../../../ui \
                    $(LOCAL_PATH)/../../../../extensions \
                    $(LOCAL_PATH)/../auto \
                    $(LOCAL_PATH)/../manual \
                    $(LOCAL_PATH)/../manual/cocos2d \
                    $(LOCAL_PATH)/../manual/cocosdenshion \
                    $(LOCAL_PATH)/../manual/audioengine \
                    $(LOCAL_PATH)/../manual/network \
                    $(LOCAL_PATH)/../manual/extension \
                    $(LOCAL_PATH)/../manual/ui \
                    $(LOCAL_PATH)/../../../../external/xxtea \
                    $(LOCAL_PATH)/../../../.. \
                    $(LOCAL_PATH)/../../../../external/lua

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../../../external/lua/tolua \
						   $(LUA_INCLUDE_PATH) \
                           $(LOCAL_PATH)/../auto \
                           $(LOCAL_PATH)/../manual \
                           $(LOCAL_PATH)/../manual/cocos2d \
                           $(LOCAL_PATH)/../manual/cocosdenshion \
                           $(LOCAL_PATH)/../manual/audioengine \
                           $(LOCAL_PATH)/../manual/network \
                           $(LOCAL_PATH)/../manual/extension \
                           $(LOCAL_PATH)/../manual/ui \
                           $(LOCAL_PATH)/../../../..

LOCAL_WHOLE_STATIC_LIBRARIES := cclua_android

LOCAL_STATIC_LIBRARIES := cc_static

include $(BUILD_STATIC_LIBRARY)

$(call import-module,$(LUA_IMPORT_PATH))
$(call import-module, cocos)
