/****************************************************************************
** Meta object code from reading C++ file 'tracked_obstacle_msg_display.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/campusrover_base/campusrover_msgs_visualization/include/campusrover_msgs_visualization/displays/tracked_obstacle_msg_display.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tracked_obstacle_msg_display.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_campusrover_msgs_visualization__TrackedObstaleMsgDisplay_t {
    QByteArrayData data[5];
    char stringdata0[117];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_campusrover_msgs_visualization__TrackedObstaleMsgDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_campusrover_msgs_visualization__TrackedObstaleMsgDisplay_t qt_meta_stringdata_campusrover_msgs_visualization__TrackedObstaleMsgDisplay = {
    {
QT_MOC_LITERAL(0, 0, 56), // "campusrover_msgs_visualizatio..."
QT_MOC_LITERAL(1, 57, 19), // "updateColorAndAlpha"
QT_MOC_LITERAL(2, 77, 0), // ""
QT_MOC_LITERAL(3, 78, 15), // "updateLineWidth"
QT_MOC_LITERAL(4, 94, 22) // "updateTrajectoryLength"

    },
    "campusrover_msgs_visualization::TrackedObstaleMsgDisplay\0"
    "updateColorAndAlpha\0\0updateLineWidth\0"
    "updateTrajectoryLength"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_campusrover_msgs_visualization__TrackedObstaleMsgDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x08 /* Private */,
       3,    0,   30,    2, 0x08 /* Private */,
       4,    0,   31,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void campusrover_msgs_visualization::TrackedObstaleMsgDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TrackedObstaleMsgDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateColorAndAlpha(); break;
        case 1: _t->updateLineWidth(); break;
        case 2: _t->updateTrajectoryLength(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject campusrover_msgs_visualization::TrackedObstaleMsgDisplay::staticMetaObject = { {
    &rviz::MessageFilterDisplay<campusrover_msgs::TrackedObstacleArray>::staticMetaObject,
    qt_meta_stringdata_campusrover_msgs_visualization__TrackedObstaleMsgDisplay.data,
    qt_meta_data_campusrover_msgs_visualization__TrackedObstaleMsgDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *campusrover_msgs_visualization::TrackedObstaleMsgDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *campusrover_msgs_visualization::TrackedObstaleMsgDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_campusrover_msgs_visualization__TrackedObstaleMsgDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<campusrover_msgs::TrackedObstacleArray>::qt_metacast(_clname);
}

int campusrover_msgs_visualization::TrackedObstaleMsgDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<campusrover_msgs::TrackedObstacleArray>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
