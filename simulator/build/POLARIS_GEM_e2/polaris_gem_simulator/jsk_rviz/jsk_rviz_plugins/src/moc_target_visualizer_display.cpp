/****************************************************************************
** Meta object code from reading C++ file 'target_visualizer_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins/src/target_visualizer_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'target_visualizer_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_jsk_rviz_plugins__TargetVisualizerDisplay_t {
    QByteArrayData data[7];
    char stringdata0[113];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__TargetVisualizerDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__TargetVisualizerDisplay_t qt_meta_stringdata_jsk_rviz_plugins__TargetVisualizerDisplay = {
    {
QT_MOC_LITERAL(0, 0, 41), // "jsk_rviz_plugins::TargetVisua..."
QT_MOC_LITERAL(1, 42, 16), // "updateTargetName"
QT_MOC_LITERAL(2, 59, 0), // ""
QT_MOC_LITERAL(3, 60, 11), // "updateAlpha"
QT_MOC_LITERAL(4, 72, 11), // "updateColor"
QT_MOC_LITERAL(5, 84, 12), // "updateRadius"
QT_MOC_LITERAL(6, 97, 15) // "updateShapeType"

    },
    "jsk_rviz_plugins::TargetVisualizerDisplay\0"
    "updateTargetName\0\0updateAlpha\0updateColor\0"
    "updateRadius\0updateShapeType"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__TargetVisualizerDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x08 /* Private */,
       3,    0,   40,    2, 0x08 /* Private */,
       4,    0,   41,    2, 0x08 /* Private */,
       5,    0,   42,    2, 0x08 /* Private */,
       6,    0,   43,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::TargetVisualizerDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TargetVisualizerDisplay *_t = static_cast<TargetVisualizerDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateTargetName(); break;
        case 1: _t->updateAlpha(); break;
        case 2: _t->updateColor(); break;
        case 3: _t->updateRadius(); break;
        case 4: _t->updateShapeType(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::TargetVisualizerDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<geometry_msgs::PoseStamped>::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__TargetVisualizerDisplay.data,
      qt_meta_data_jsk_rviz_plugins__TargetVisualizerDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *jsk_rviz_plugins::TargetVisualizerDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::TargetVisualizerDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__TargetVisualizerDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<geometry_msgs::PoseStamped>::qt_metacast(_clname);
}

int jsk_rviz_plugins::TargetVisualizerDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<geometry_msgs::PoseStamped>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
