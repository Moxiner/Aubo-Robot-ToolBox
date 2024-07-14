---@diagnostic disable: lowercase-global, unused-local, undefined-doc-param, undefined-doc-name, missing-return

------------------    介绍    ------------------
-- 这是一个 Aubo机器人的Lua脚本辅助模块
-- 将 import.lua 放置在工作区，即可实现代码补全、代码纠错等供能
-- API文档还没有完全做完
-- 作者 莫欣儿

------------------    数学模块    ------------------

---返回f 的反余弦主值（以弧度为单位）。如果f 在范围 `[-1,  1]` 之外，则会发生运行时错误
---@param f number 角度浮点值
---@return number f_cos f 的反余弦,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function acos(f) end

---返回f 的反正弦主值（以弧度为单位）。如果f 在范围 `[-1,  1]` 之外，则会发生运行时错误
---@param f number 角度浮点值
---@return number f_sin f 的反正弦,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
function asin(f) end

---返回f 的反正切主值（以弧度为单位）
---@param f number 角度浮点值
---@return number f_ten f 的反正切,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function atan(f) end

---返参数回x/y 的反正切主值（以弧度为单位）
---@param x number 角度浮点 x值
---@param y number 角度浮点值 y值
---@return number f_ten x/y 的反正切,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function atan2(x, y) end

---返回f 弧度角的余弦
---@param f number 角度浮点值
---@return number f_cos f的y余弦,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function cos(f) end

---返回f 弧度角的正弦
---@param f number 角度浮点值
---@return number f_sin f的正弦,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function sin(f) end

---返回f 弧度角的正切
---@param f number 角度浮点值
---@return number f_tan f 的正切,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function tan(f) end

---返回f 的平方根。如果f 为负，则会发生运行时错误
---@param f number 角度浮点值
---@return number f_sqrt f 的平方根,浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function sqrt(f) end

---返回f~b 基数的对数。如果b 或f 为负数，则会发生运行时错误
---@param b number 角度b浮点值
---@param f number 角度f浮点值
---@return number f_log f~b 基数的对数，浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function log(b, f) end

---返回基数自乘指数幂的结果。如果基数为负，并且指数不是整数值，或者如果基数为零，并且指数为负，则会发生运行时错误
---@param b number 角度b浮点值
---@param e number 角度e浮点值
---@return number f_pow 基数自乘指数幂，浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function pow(b, e) end

---将浮点数四舍五入到不小于f 的最小整数
---@param f number 角度f浮点值
---@return number f_ceil 四舍五入的整数
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function ceil(f) end

---将浮点数四舍五入到不大于f 的最大整数
---@param f number 角度f浮点值
---@return number f_floor 四舍五入的整数
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function floor(f) end

---返回弧度r 转化为角度值
---@param r number 角度r浮点值
---@return number f_r2d 角度值，浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function r2d(r) end

---返回d 度数的弧度值。实际上：(d/180)* PI
---@param d number 角度d浮点值
---@return number f_d2r 以弧度为单位的角度，浮点值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function d2r(d) end

---欧拉角转换为四元数
---
---注意：欧拉角顺序为ZYX
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
---@param oriR table `oriR = {oriW ,oriX ,oriY,oriZ}`    欧拉角（弧度）
---@return table ori `ori = {oriW, oriX, oriY, oriZ}`     根据参数欧拉角转换后的四元数
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function rpy2quaternion(oriR) end

---四元数转换为欧拉角
---@param oriR table `oriR = ({oriW, oriX, oriY, oriZ}` 四元数
---@return table ori `ori = {oriRX,oriRY,oriRZ}` 根据参数四元数转换后的欧拉角（弧度）
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function quaternion2rpy(oriR) end

------------------    运动模块    ------------------

--- 初始化全局运动属性
---
---默认全局运动属性包括但不限于:
---`坐标系参数`、 `工具参数`、 `关节速度加速度阈值`、 `末端速度加速度阈值`、 `交融半径`、 `全局路点`、 `提前到位参数` 等
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function init_global_move_profile() end

---设置关节 1-6 的最大加速度 单位 `rad/s^2`
---@param jointtable table `jointtable = {joint1MaxAcc, joint2MaxAcc, joint3MaxAcc, joint4MaxAcc, joint5MaxAcc, joint6MaxAcc` 类型为  `table`
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_joint_maxacc(jointtable) end

---设置关节1-6 的最大速度,单位rad/s
---@param joinMaxVet_table table `joinMaxVe_ttable = {joint1MaxVelc, joint2MaxVelc, joint3MaxVelc, joint4MaxVelc, joint5MaxVelc, joint6MaxVelc}` 类型为 `table`
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_joint_maxvelc(joinMaxVe_ttable) end

---设置末端最大加速度
---@param joinMaxVe_ttable number 末端最大加速度，单位 `m/s^2`
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_end_maxacc(endMaxAcc) end

---设置末端最大速度
---@param endMaxVelc number 末端最大速度，单位 `m/s`
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function endset_end_maxvelc(endMaxVelc) end

---使机器人机械臂轴动,单位弧度
---@param joint_table table `joint_table = {joint1Angle, joint2Angle, joint3Angle, joint4Angle, joint5Angle, joint6Angle}`  目标路点的六个关节角弧度值
---@param isBlock boolean 运动阻塞标志位。为true 时，接口阻塞直到运动至目标路点；为false，接口立即返回
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function move_join(joint_table, isBlock) end

---使机器人机械臂直线运动,单位弧度
---@param joint_table table `joint_table = {joint1Angle, joint2Angle, joint3Angle, joint4Angle, joint5Angle, joint6Angle}`  目标路点的六个关节角弧度值
---@param isBlock boolean 运动阻塞标志位。为true 时，接口阻塞直到运动至目标路点；为false，接口立即返回
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function move_line(joint_table, isBlock) end

---设置相对偏移属性
---@param posOffse_table table `posOffse_table = {number posOffsetX, number posOffsetY, number posOffsetZ}` 基于参考坐标系的位置偏移量，必传参数。如果不需要位置偏移,  则传递为 `{0, 0, 0}`
---@param oriOffset_table table `oriOffset_table = number oriOffsetW, number oriOffsetX, number oriOffsetY, number oriOffsetZ}` 基于参考坐标系的姿态偏移量，选传参数。如果不需要姿态偏移,  则可以传递为 `{1, 0, 0, 0}` 或者不传递。
---@param toolEndPos_table table `toolEndPos_table = {number toolEndPosX, toolEndPosY, toolEndPosZ` 工具末端位置参数
---@param toolEndOri_table table `toolEndOri_table = {number  toolEndOriW,  toolEndOriX,  toolEndOriY,  toolEndOriZ}` 工具末端姿态参数
---注：当基于基坐标系或用户坐标系时，该参数为必不传参数，当基于工具坐标系时，必传参数
---@param coordCalibrateMethod CoordCalibrateMethod|any 用户坐标系参数，选传参数
---@param point1Joint_table table  point1Joint_table = {number point1Joint1, number point1Joint2, number point1Joint3, number point1Joint4, number point1Joint5, number point1Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第一个点关节角
---@param point2Joint_table table `point2Joint_table = {number point2Joint1, number point2Joint2, number point2Joint3, number point2Joint4, number point2Joint5, number point2Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系第二个点关节角
---@param point3Joint_table table `point3Joint_table = {number point3Joint1, number point3Joint2, number point3Joint3, number point3Joint4, number point3Joint5, number point3Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第三个点关节角
---@param toolEndPosForCalibUserCoord_table table `toolEndPosForCalibUserCoord_table = {number toolEndPosXForCalibUserCoord, toolEndPosYForCalibUserCoord, toolEndPosZForCalibUserCoord}` 标定用户坐标系所使用的工具末端位置参数。选传参数，当使用法兰盘中心标定用户坐标系时可以不传递该参数或者传递为 `(0, 0, 0)`；当使用工具标定用户坐标系时为必传参数
---注：当基于基坐标系或工具坐标系时，该参数为必不传参数，当基于用户坐标系时，为必传参数。
function set_relative_offset(...) end

---返回当前机械臂的实时路点位置，姿态，关节角度的嵌套 `table`
---@return table waypoint_table 类型为table 的实时路点位置、姿态、关节角
---
---
--- waypoint_table =  {
---
---     "pos" = {
---
---         "x" = posX
---
---         "y" = posY
---
---         "z" = posZ
---
---     }
---
---     "ori" = {
---
---         "w" = oriW
---
---         "x" = oriX
---
---         "y" = oriY
---
---         "z" = oriZ
---
---     }
---     "joint" = {
---
---         "j1" = joint1Angle
---
---         "j2" = joint2Angle
---
---         "j3" = joint3Angle
---
---         "j4" = joint4Angle
---
---         "j5" = joint5Angle
---
---         "j6" = joint6Angle
---
---     }
---
--- }
---
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function get_current_waypoint() end

---获取根据指定的逆解参考点、位置、姿态、工具、用户坐标系和末端旋转角度参数，逆解后的关节角度
---@param ikRefPointJointAngle_table table `toolEndOriOnRefCoord ={ikRefPointJoint1Angle, ikRefPointJoint2Angle, ikRefPointJoint3Angle, ikRefPointJoint4Angle, ikRefPointJoint5Angle, ikRefPointJoint6Angle}` 逆解参考点，选传参数。传参时，以输入参数为逆解的参考点；不传参时，以当前机械臂的实时路点为逆解的参考点
---@param toolEndPosOnRefCoord_table table `toolEndPosOnRefCoord_table = {number toolEndPosXOnRefCoord, toolEndPosYOnRefCoord, toolEndPosZOnRefCoord}` 基于参考坐标系的工具末端位置参数。必传参数
---@param toolEndOriOnRefCoord_table table `toolEndOriOnRefCoord_table = {number toolEndOriWOnRefCoord, toolEndOriXOnRefCoord, toolEndOriYOnRefCoord, toolEndOriZOnRefCoord}` 基于参考坐标系的工具末端姿态参数。选传参数，如果不传递该参数，默认保持当前实时路点姿态
---@param enableEndRotate boolean 使能末端旋转参数，必传参数
---@param endRotateAngle number 末端轴动参数，捆绑参数
---若enableEndRotate 参数为true，则该参数为必传参数，将逆解后第六关节的结果替换为该参数的值。若 `enableEndRotate` 参数为 `false` ，则该参数为必不传参数
---@param coordCalibrateMethod CoordCalibrateMethod|any 标定用户坐标系的方法枚举，参考枚举类型章节
---
---### 工具末端参数，选传参数。包括：
---@param toolEndPos_table table `toolEndPos_table = {{number toolEndPosX, toolEndPosY, toolEndPosZ}` 工具末端位置参数
---@param toolEndOri_table table `toolEndOri_table = {number toolEndOriW, number toolEndOriX, toolEndOriY, toolEndOriZ}` 工具末端姿态参数
---#### 注：当基于法兰盘中心时，工具末端参数可以不传递或传递为 `{0,0,0}` , `{1,0,0,0}`
---
---### 用户坐标系参数，选传参数。包括:
---
---@param point1Joint_table table `point1Joint_table = {number point1Joint1, number point1Joint2, number point1Joint3, number point1Joint4, number point1Joint5, number point1Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第一个点点关节角
---@param point2Joint_table table `point2Joint_table = {number point2Joint1, number point2Joint2, number point2Joint3, number point2Joint4, number point2Joint5, number point2Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第二个点点关节角
---@param point3Joint_table table `point3Joint_table = {number point3Joint1, number point3Joint2, number point3Joint3, number point3Joint4, number point3Joint5, number point3Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第三个点关节角
---@param toolEndPositionForCalibCoord_table table `toolEndPositionForCalibCoord_table = {number toolEndPosXForCalibUserCoord, toolEndPosYForCalibUserCoord, toolEndPosZForCalibUserCoord}` 标定用户坐标系所使用的工具末端位置参数。选传参数，当使用法兰盘中心标定用户坐标系时可以不传递该参数或者传递为(0, 0, 0)；当使用工具标定用户坐标系时为必传参数
---#### 注：当基于基坐标系逆解时，该参数为必不传参数
---@return table jointAngle_table `jointAngle_table` = {joint1Angle, joint2Angle, joint3Angle, joint4Angle, joint5Angle, joint6Angle} 如果逆解成功，返回逆解后的关节角
function get_target_pose(...) end

---将法兰盘中心的位姿转换为工具末端基于参考坐标系的位姿
---@param joint1Angle_table any `joint1Angle_table = joint1Angle, joint2Angle, joint3Angle, joint4Angle, joint5Angle, joint6Angle}` 六个关节弧度（唯一确定一个法兰盘中心的位姿）
---
---### 工具末端参数，选传参数。包括：
---@param toolEndPos_table table `toolEndPos_table = {number toolEndPosX, toolEndPosY, toolEndPosZ}` 工具末端位置参数。
---@param toolEndOri_table table `toolEndOri_table = {number toolEndOriW, number toolEndOriX, toolEndOriY, toolEndOriZ}` 工具末端姿态参数。
---#### 注意：当基于法兰盘中心时，工具末端参数可以不传递或传递为 {0,0,0} , {1,0,0,0}
---
---### 用户坐标系参数，选传参数。包括:
---@param CoordCalibrateMethod CoordCalibrateMethod|any `CoordCalibrateMethod` 标定用户坐标系的方法枚举，参考枚举类型章节。
---@param point1Joint_table number `point1Joint_table = {number point1Joint1, number point1Joint2, number point1Joint3, number point1Joint4, number point1Joint5, number point1Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第一个点关节角
---@param point2Joint_table table `point2Joint_table = {number point2Joint1, number point2Joint2, number point2Joint3, number point2Joint4, number point2Joint5, number point2Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第二个点关节角
---@param point3Joint_table table `point3Joint_table = {number point3Joint1, number point3Joint2, number point3Joint3, number point3Joint4, number point3Joint5, number point3Joint6}` 标定用户坐标系所使用的法兰盘中心基于基坐标系的第三个点关节角
---@param toolEndPosForCalibUserCoord_table table `toolEndPosForCalibUserCoord_table = number toolEndPosXForCalibUserCoord, toolEndPosYForCalibUserCoord, toolEndPosZForCalibUserCoord}` 标定用户坐标系所使用的工具末端位置参数。选传参数，当使用法兰盘中心标定用户坐标系时可以不传递该参数或者传递为 `(0, 0, 0)` ；当使用工具标定用户坐标系时为必传参数
---#### 注：当参考系为基坐标系时，该参数为必不传参数
---
--[查看文档](示教器V4.x脚本接口手册.pdf)
function base_to_user(joint1Angle_table, ...) end

---向全局路点列表中添加路点，  服务于 `move_track` 函数
---@param jointAngle_table table `jointAngle_table = {number joint1Angle, number joint2Angle, number joint3Angle, number joint4Angle, number joint5Angle, number joint6Angle}`
function add_waypoint(jointAngle_table) end

---清除全局路点列表
function clear_global_waypoint_list() end

---轨迹运动，根据全局路点列表（通过 `add_waypoint`  函数添加）
---@param trackType any 参考枚举类型章节包括 `圆弧`、`圆`、`moveP` 、`B` 样条等
---@param isBlock boolean 运动阻塞标志位。为 `true` 时，接口阻塞直到运动至目标路点；为 `false` ，接口立即返回
function move_track(trackType, isBlock) end

---设置机械臂圆周运动
---@param times number 圆运动的圈数，与 `move_track` 一起使用. `times = 0` 时，为圆弧运动，`times > 0` 时，为圆运动
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_circular_loop_times(times) end

---设置交融半径
---@param blendRadius number 交融半径，单位 `米`
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_blend_radius(blendRadius) end

---设置提前到位距离模式
---@param distance number 提前到位距离
function set_arrival_ahead_distance_mode(distance) end

---设置提前到位时间模式
---@param time number 提前到位时间
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_arrival_ahead_time_mode(time) end

---睡眠等待
---@param second number 等待时间，单位秒
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function sleep(second) end

---通讯模块
tcp = {}
---客户端模块
tcp.client = {}
---设置机械臂本体IO 状态
---@param RobotIOType any 表示IO 类型,  枚举类型参考上文
---@param name string   表示IO 名称
---@param value number IO 状态值
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function set_robot_io_status(RobotIOType, name, value) end

---连接指定IP 和port 的TCP 服务器
---@param IP string  IP 地址
---@param ，port number 端口号
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function tcp.client.connect(IP, port) end

---以字符串形式接收从指定IP 和port 的TCP 服务器发送来的数据
---@param IP string  IP 地址
---@param port number 端口号
---@return string recv_str 返回从服务器发送来的数据
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function tcp.client.recv_str_data(IP, port) end

---以字符串形式向指定IP 和port 的TCP 服务器发送数据msg
---@param IP string  IP 地址
---@param port number 端口号
---@param msg string 发送的数据
---
---[查看文档](示教器V4.x脚本接口手册.pdf)
---
function tcp.client.send_str_data(IP, port, msg) end
