/****************************************************************************
** Meta object code from reading C++ file 'overlay_menu_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/POLARIS_GEM_e2/polaris_gem_simulator/jsk_rviz/jsk_rviz_plugins/src/overlay_menu_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'overlay_menu_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_jsk_rviz_plugins__OverlayMenuDisplay_t {
    QByteArrayData data[12];
    char stringdata0[210];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_jsk_rviz_plugins__OverlayMenuDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_jsk_rviz_plugins__OverlayMenuDisplay_t qt_meta_stringdata_jsk_rviz_plugins__OverlayMenuDisplay = {
    {
QT_MOC_LITERAL(0, 0, 36), // "jsk_rviz_plugins::OverlayMenu..."
QT_MOC_LITERAL(1, 37, 11), // "updateTopic"
QT_MOC_LITERAL(2, 49, 0), // ""
QT_MOC_LITERAL(3, 50, 10), // "updateLeft"
QT_MOC_LITERAL(4, 61, 9), // "updateTop"
QT_MOC_LITERAL(5, 71, 18), // "updateKeepCentered"
QT_MOC_LITERAL(6, 90, 31), // "updateOvertakeFGColorProperties"
QT_MOC_LITERAL(7, 122, 31), // "updateOvertakeBGColorProperties"
QT_MOC_LITERAL(8, 154, 13), // "updateFGColor"
QT_MOC_LITERAL(9, 168, 13), // "updateFGAlpha"
QT_MOC_LITERAL(10, 182, 13), // "updateBGColor"
QT_MOC_LITERAL(11, 196, 13) // "updateBGAlpha"

    },
    "jsk_rviz_plugins::OverlayMenuDisplay\0"
    "updateTopic\0\0updateLeft\0updateTop\0"
    "updateKeepCentered\0updateOvertakeFGColorProperties\0"
    "updateOvertakeBGColorProperties\0"
    "updateFGColor\0updateFGAlpha\0updateBGColor\0"
    "updateBGAlpha"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_jsk_rviz_plugins__OverlayMenuDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x09 /* Protected */,
       3,    0,   65,    2, 0x09 /* Protected */,
       4,    0,   66,    2, 0x09 /* Protected */,
       5,    0,   67,    2, 0x09 /* Protected */,
       6,    0,   68,    2, 0x09 /* Protected */,
       7,    0,   69,    2, 0x09 /* Protected */,
       8,    0,   70,    2, 0x09 /* Protected */,
       9,    0,   71,    2, 0x09 /* Protected */,
      10,    0,   72,    2, 0x09 /* Protected */,
      11,    0,   73,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void jsk_rviz_plugins::OverlayMenuDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        OverlayMenuDisplay *_t = static_cast<OverlayMenuDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateTopic(); break;
        case 1: _t->updateLeft(); break;
        case 2: _t->updateTop(); break;
        case 3: _t->updateKeepCentered(); break;
        case 4: _t->updateOvertakeFGColorProperties(); break;
        case 5: _t->updateOvertakeBGColorProperties(); break;
        case 6: _t->updateFGColor(); break;
        case 7: _t->updateFGAlpha(); break;
        case 8: _t->updateBGColor(); break;
        case 9: _t->updateBGAlpha(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject jsk_rviz_plugins::OverlayMenuDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_jsk_rviz_plugins__OverlayMenuDisplay.data,
      qt_meta_data_jsk_rviz_plugins__OverlayMenuDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *jsk_rviz_plugins::OverlayMenuDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *jsk_rviz_plugins::OverlayMenuDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_jsk_rviz_plugins__OverlayMenuDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::Display::qt_metacast(_clname);
}

int jsk_rviz_plugins::OverlayMenuDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
