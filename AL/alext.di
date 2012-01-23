//OpenAL for D Interface by KoDec/2012
//
//alext.di - OpenAL Extensions Import

module alext;

public import altypes;

extern (C)
{
const int AL_LOKI_IMA_ADPCM_format = 1;
const int AL_FORMAT_IMA_ADPCM_MONO16_EXT =          0x10000;
const int AL_FORMAT_IMA_ADPCM_STEREO16_EXT =        0x10001;

const int AL_LOKI_WAVE_format = 1;
const int AL_FORMAT_WAVE_EXT =                      0x10002;

const int AL_EXT_vorbis = 1;
const int AL_FORMAT_VORBIS_EXT =                    0x10003;

const int AL_LOKI_quadriphonic =  1;
const int AL_FORMAT_QUAD8_LOKI    =                 0x10004;
const int AL_FORMAT_QUAD16_LOKI    =                0x10005;


const int AL_EXT_float32 = 1;
const int AL_FORMAT_MONO_FLOAT32 =                  0x10010;
const int AL_FORMAT_STEREO_FLOAT32 =                0x10011;


const int AL_EXT_double = 1;
const int AL_FORMAT_MONO_DOUBLE_EXT =               0x10012;
const int AL_FORMAT_STEREO_DOUBLE_EXT  =            0x10013;

const int ALC_LOKI_audio_channel = 1;
const int ALC_CHAN_MAIN_LOKI      =                 0x500001;
const int ALC_CHAN_PCM_LOKI        =                0x500002;
const int ALC_CHAN_CD_LOKI          =               0x500003;


const int ALC_ENUMERATE_ALL_EXT = 1;
const int ALC_DEFAULT_ALL_DEVICES_SPECIFIER  =      0x1012;
const int ALC_ALL_DEVICES_SPECIFIER      =          0x1013;


const int AL_EXT_MCFORMATS = 1;
const int AL_FORMAT_QUAD8    =                      0x1204;
const int AL_FORMAT_QUAD16    =                     0x1205;
const int AL_FORMAT_QUAD32     =                    0x1206;
const int AL_FORMAT_REAR8       =                   0x1207;
const int AL_FORMAT_REAR16       =                  0x1208;
const int AL_FORMAT_REAR32        =                 0x1209;
const int AL_FORMAT_51CHN8      =                   0x120A;
const int AL_FORMAT_51CHN16     =                   0x120B;
const int AL_FORMAT_51CHN32     =                   0x120C;
const int AL_FORMAT_61CHN8      =                   0x120D;
const int AL_FORMAT_61CHN16     =                   0x120E;
const int AL_FORMAT_61CHN32     =                   0x120F;
const int AL_FORMAT_71CHN8      =                   0x1210;
const int AL_FORMAT_71CHN16     =                   0x1211;
const int AL_FORMAT_71CHN32     =                   0x1212;


const int AL_EXT_MULAW_MCFORMATS = 1;
const int AL_FORMAT_MONO_MULAW    =                 0x10014;
const int AL_FORMAT_STEREO_MULAW   =                0x10015;
const int AL_FORMAT_QUAD_MULAW     =                0x10021;
const int AL_FORMAT_REAR_MULAW     =                0x10022;
const int AL_FORMAT_51CHN_MULAW    =                0x10023;
const int AL_FORMAT_61CHN_MULAW    =                0x10024;
const int AL_FORMAT_71CHN_MULAW    =                0x10025;


const int AL_EXT_IMA4 = 1;
const int AL_FORMAT_MONO_IMA4 =                     0x1300;
const int AL_FORMAT_STEREO_IMA4 =                   0x1301;


const int AL_EXT_STATIC_BUFFER = 1;
ALvoid function(in ALint, ALenum, ALvoid*,ALsizei, ALsizei) PFNALBUFFERDATASTATICPROC;
ALvoid alBufferDataStatic(in ALint buffer, ALenum format, ALvoid *data, ALsizei len, ALsizei freq);

const int ALC_EXT_EFX = 1;



const int ALC_EXT_disconnect = 1;
const int ALC_CONNECTED  =                          0x313;

const int ALC_EXT_thread_local_context = 1;
ALCboolean function(ALCcontext*) PFNALCSETTHREADCONTEXTPROC;
ALCcontext* function() PFNALCGETTHREADCONTEXTPROC;

ALCboolean alcSetThreadContext(ALCcontext *context);
ALCcontext* alcGetThreadContext();

const int AL_EXT_source_distance_model = 1;
const int AL_SOURCE_DISTANCE_MODEL    =             0x200;

const int AL_SOFT_buffer_sub_data = 1;
const int AL_BYTE_RW_OFFSETS_SOFT     =             0x1031;
const int AL_SAMPLE_RW_OFFSETS_SOFT    =            0x1032;
ALvoid function(ALuint,ALenum,in ALvoid*,ALsizei,ALsizei) PFNALBUFFERSUBDATASOFTPROC;
ALvoid alBufferSubDataSOFT(ALuint buffer,ALenum format,in ALvoid *data,ALsizei offset,ALsizei length);

const int AL_SOFT_loop_points = 1;
const int AL_LOOP_POINTS_SOFT    =                  0x2015;
}
