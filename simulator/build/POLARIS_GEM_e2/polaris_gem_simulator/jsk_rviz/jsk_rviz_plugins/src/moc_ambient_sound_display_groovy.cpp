/****************************************************************************
** Meta object code from reading C++ file 'ambient_sound_display_groovy.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins/src/ambient_sound_display_groovy.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ambient_sound_display_groovy.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_jsk_rviz_plugins__AmbientSoundDisplay_t {
    QByteArrayData data[7];
    char stringdata0[136];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__AmbientSoundDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__AmbientSoundDisplay_t qt_meta_stringdata_jsk_rviz_plugins__AmbientSoundDisplay = {
    {
QT_MOC_LITERAL(0, 0, 37), // "jsk_rviz_plugins::AmbientSoun..."
QT_MOC_LITERAL(1, 38, 19), // "updateColorAndAlpha"
QT_MOC_LITERAL(2, 58, 0), // ""
QT_MOC_LITERAL(3, 59, 16), // "updateAppearance"
QT_MOC_LITERAL(4, 76, 19), // "updateHistoryLength"
QT_MOC_LITERAL(5, 96, 14), // "validateFloats"
QT_MOC_LITERAL(6, 111, 24) // "jsk_hark_msgs::HarkPower"

    },
    "jsk_rviz_plugins::AmbientSoundDisplay\0"
    "updateColorAndAlpha\0\0updateAppearance\0"
    "updateHistoryLength\0validateFloats\0"
    "jsk_hark_msgs::HarkPower"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__AmbientSoundDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x08 /* Private */,
       3,    0,   35,    2, 0x08 /* Private */,
       4,    0,   36,    2, 0x08 /* Private */,
       5,    1,   37,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Bool, 0x80000000 | 6,    2,

       0        // eod
};

void jsk_rviz_plugins::AmbientSoundDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        AmbientSoundDisplay *_t = static_cast<AmbientSoundDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateColorAndAlpha(); break;
        case 1: _t->updateAppearance(); break;
        case 2: _t->updateHistoryLength(); break;
        case 3: { bool _r = _t->validateFloats((*reinterpret_cast< const jsk_hark_msgs::HarkPower(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject jsk_rviz_plugins::AmbientSoundDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<jsk_hark_msgs::HarkPower>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__AmbientSoundDisplay.data,
      qt_meta_data_jsk_rviz_plugins__AmbientSoundDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *jsk_rviz_plugins::AmbientSoundDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::AmbientSoundDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__AmbientSoundDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<jsk_hark_msgs::HarkPower>::qt_metacast(_clname);
}

int jsk_rviz_plugins::AmbientSoundDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<jsk_hark_msgs::HarkPower>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
