LDFLAGS = -lglut -lGLU -lGL -lglfw
S = glad.c
CC = g++
LUMA_OUT = out_yuv400_512x512.yuv
JPG_IN = lena.jpg
TARGET = shadeit

all: $(TARGET) $(LUMA_OUT)

$(LUMA_OUT): $(JPG_IN)
	ffmpeg -hide_banner -i $(JPG_IN) $(LUMA_OUT) -y

$(TARGET): tex.cpp shader_s.h
	$(CC) $(S) -o $@ $<  $(LDFLAGS)

clean:
	@rm -f $(TARGET) $(LUMA_OUT) 2>&1 >/dev/null

