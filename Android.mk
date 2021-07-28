#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	base/data-struct/hash.c \
	base/data-struct/list.c \
	base/data-struct/radix-tree.c \
	device_mapper/datastruct/bitset.c \
	device_mapper/ioctl/libdm-iface.c \
	device_mapper/libdm-common.c \
	device_mapper/libdm-config.c \
	device_mapper/libdm-deptree.c \
	device_mapper/libdm-file.c \
	device_mapper/libdm-report.c \
	device_mapper/libdm-string.c \
	device_mapper/libdm-targets.c \
	device_mapper/libdm-timestamp.c \
	device_mapper/mm/pool.c \
	device_mapper/regex/matcher.c \
	device_mapper/regex/parse_rx.c \
	device_mapper/regex/ttree.c \
	device_mapper/vdo/status.c \
	device_mapper/vdo/vdo_target.c \
	lib/activate/activate.c \
	lib/aio/io_queue_init.c \
	lib/aio/io_queue_release.c \
	lib/aio/io_queue_wait.c \
	lib/aio/io_queue_run.c \
	lib/aio/io_getevents.c \
	lib/aio/io_submit.c \
	lib/aio/io_cancel.c \
	lib/aio/io_setup.c \
	lib/aio/io_destroy.c \
	lib/aio/io_pgetevents.c \
	lib/aio/raw_syscall.c \
	lib/aio/compat-0_1.c \
	lib/cache/lvmcache.c \
	lib/writecache/writecache.c \
	lib/integrity/integrity.c \
	lib/cache_segtype/cache.c \
	lib/commands/toolcontext.c \
	lib/config/config.c \
	lib/datastruct/btree.c \
	lib/datastruct/str_list.c \
	lib/device/bcache.c \
	lib/device/bcache-utils.c \
	lib/device/dev-cache.c \
	lib/device/device_id.c \
	lib/device/dev-ext.c \
	lib/device/dev-io.c \
	lib/device/dev-md.c \
	lib/device/dev-swap.c \
	lib/device/dev-type.c \
	lib/device/dev-luks.c \
	lib/device/dev-dasd.c \
	lib/device/dev-lvm1-pool.c \
	lib/display/display.c \
	lib/error/errseg.c \
	lib/unknown/unknown.c \
	lib/filters/filter-composite.c \
	lib/filters/filter-persistent.c \
	lib/filters/filter-regex.c \
	lib/filters/filter-sysfs.c \
	lib/filters/filter-md.c \
	lib/filters/filter-fwraid.c \
	lib/filters/filter-mpath.c \
	lib/filters/filter-partitioned.c \
	lib/filters/filter-type.c \
	lib/filters/filter-usable.c \
	lib/filters/filter-internal.c \
	lib/filters/filter-signature.c \
	lib/filters/filter-deviceid.c \
	lib/format_text/archive.c \
	lib/format_text/archiver.c \
	lib/format_text/export.c \
	lib/format_text/flags.c \
	lib/format_text/format-text.c \
	lib/format_text/import.c \
	lib/format_text/import_vsn1.c \
	lib/format_text/text_label.c \
	lib/freeseg/freeseg.c \
	lib/label/label.c \
	lib/label/hints.c \
	lib/locking/file_locking.c \
	lib/locking/locking.c \
	lib/log/log.c \
	lib/metadata/cache_manip.c \
	lib/metadata/writecache_manip.c \
	lib/metadata/integrity_manip.c \
	lib/metadata/lv.c \
	lib/metadata/lv_manip.c \
	lib/metadata/merge.c \
	lib/metadata/metadata.c \
	lib/metadata/mirror.c \
	lib/metadata/pool_manip.c \
	lib/metadata/pv.c \
	lib/metadata/pv_list.c \
	lib/metadata/pv_manip.c \
	lib/metadata/pv_map.c \
	lib/metadata/raid_manip.c \
	lib/metadata/segtype.c \
	lib/metadata/snapshot_manip.c \
	lib/metadata/thin_manip.c \
	lib/metadata/vdo_manip.c \
	lib/metadata/vg.c \
	lib/mirror/mirrored.c \
	lib/misc/crc.c \
	lib/misc/lvm-exec.c \
	lib/misc/lvm-file.c \
	lib/misc/lvm-flock.c \
	lib/misc/lvm-globals.c \
	lib/misc/lvm-maths.c \
	lib/misc/lvm-signal.c \
	lib/misc/lvm-string.c \
	lib/misc/lvm-wrappers.c \
	lib/misc/lvm-percent.c \
	lib/misc/sharedlib.c \
	lib/mm/memlock.c \
	lib/notify/lvmnotify.c \
	lib/properties/prop_common.c \
	lib/raid/raid.c \
	lib/report/properties.c \
	lib/report/report.c \
	lib/snapshot/snapshot.c \
	lib/striped/striped.c \
	lib/thin/thin.c \
	lib/uuid/uuid.c \
	lib/zero/zero.c \
	lib/activate/dev_manager.c \
	lib/activate/fs.c \
	libdaemon/client/daemon-io.c \
	libdaemon/client/config-util.c \
	libdaemon/client/daemon-client.c \
	tools/command.c \
	tools/dumpconfig.c \
	tools/formats.c \
	tools/lvchange.c \
	tools/lvconvert.c \
	tools/lvconvert_poll.c \
	tools/lvcreate.c \
	tools/lvdisplay.c \
	tools/lvextend.c \
	tools/lvmcmdline.c \
	tools/lvmdevices.c \
	tools/lvmdiskscan.c \
	tools/lvpoll.c \
	tools/lvreduce.c \
	tools/lvremove.c \
	tools/lvrename.c \
	tools/lvresize.c \
	tools/lvscan.c \
	tools/polldaemon.c \
	tools/pvchange.c \
	tools/pvck.c \
	tools/pvcreate.c \
	tools/pvdisplay.c \
	tools/pvmove.c \
	tools/pvmove_poll.c \
	tools/pvremove.c \
	tools/pvresize.c \
	tools/pvscan.c \
	tools/reporter.c \
	tools/segtypes.c \
	tools/tags.c \
	tools/toollib.c \
	tools/vgcfgbackup.c \
	tools/vgcfgrestore.c \
	tools/vgchange.c \
	tools/vgck.c \
	tools/vgcreate.c \
	tools/vgdisplay.c \
	tools/vgexport.c \
	tools/vgextend.c \
	tools/vgimport.c \
	tools/vgimportclone.c \
	tools/vgimportdevices.c \
	tools/vgmerge.c \
	tools/vgmknodes.c \
	tools/vgreduce.c \
	tools/vgremove.c \
	tools/vgrename.c \
	tools/vgscan.c \
	tools/vgsplit.c \
	tools/lvm.c \
	tools/lvm2cmd-static.c \
	tools/lvmcmdlib.c

LOCAL_MODULE := lvm
LOCAL_SHARED_LIBRARIES := \
    liblog \
    libbase \
    libcutils \

LOCAL_CFLAGS := -Wall -Wno-error

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/include \
        $(LOCAL_PATH)/lib/aio \
        bionic/libc/include

LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := scripts/lvm2-init-mapper-control
LOCAL_MODULE := lvm2-init-mapper-control
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin

include $(BUILD_PREBUILT)
