# README

## Overview

This batch script creates a desktop shortcut to run a FiveM server with selected parameters. It allows users to configure settings such as file path, PureMode, game build, and IP/Port before creating the shortcut.

## Features

- **File Selection:** Opens a dialog to select the FiveM executable file.
- **PureMode Selection:** Choose from options like No Pure, Pure_1, and Pure_2.
- **Game Build Selection:** Select a FiveM game build from a predefined list or enter a custom build.
- **IP and Port Input:** Specify the IP address and port for connecting to the FiveM server.
- **Shortcut Creation:** Creates a desktop shortcut with the specified settings to quickly launch the FiveM server.

## Usage

1. **Download and Save:** Copy the script into a `.bat` file and save it.
2. **Run the Script:** Double-click the `.bat` file to execute it.
3. **Follow Prompts:** Enter the required information when prompted:
   - Server Name
   - File Path (via file dialog)
   - PureMode
   - Game Build
   - IP and Port
4. **Shortcut Creation:** After completing the prompts, a shortcut will be created on your desktop with the name you provided.

## Example

If you select a file `fiveM.exe`, choose `Pure_1`, and set the game build to `build_2060` with IP `127.0.0.1` and port `30120`, the script will create a shortcut on your desktop that runs `fiveM.exe` with the arguments `-pure_1 -b2060 +connect 127.0.0.1:30120`.

## Troubleshooting

- **No File Selected:** Make sure to select a file when prompted.
- **Invalid Choice:** Ensure you enter a valid choice for PureMode, Game Build, or Custom Build.
- **FiveM Server Issues:** Verify that the FiveM executable path and IP/Port are correctly specified and that the FiveM server is running.

## Notes

This script is designed to facilitate launching FiveM servers with custom configurations. Ensure that the FiveM executable and game build are compatible with your server setup.

---

## ภาพรวม

สคริปต์นี้สร้างทางลัดบนเดสก์ท็อปเพื่อเรียกใช้เซิร์ฟเวอร์ FiveM ด้วยพารามิเตอร์ที่เลือก ผู้ใช้สามารถกำหนดการตั้งค่าต่างๆ เช่น เส้นทางไฟล์, PureMode, build ของเกม, และ IP/Port ก่อนสร้างทางลัด

## คุณสมบัติ

- **การเลือกไฟล์:** เปิดกล่องโต้ตอบเพื่อเลือกไฟล์ executable ของ FiveM
- **การเลือก PureMode:** เลือกจากตัวเลือกเช่น No Pure, Pure_1, และ Pure_2
- **การเลือก Game Build:** เลือก build ของเกม FiveM จากรายการที่กำหนดไว้ล่วงหน้าหรือกรอก build แบบกำหนดเอง
- **การกรอก IP และพอร์ต:** ระบุ IP และพอร์ตสำหรับการเชื่อมต่อกับเซิร์ฟเวอร์ FiveM
- **การสร้างทางลัด:** สร้างทางลัดบนเดสก์ท็อปด้วยการตั้งค่าที่ระบุเพื่อเรียกใช้เซิร์ฟเวอร์ FiveM ได้อย่างรวดเร็ว

## การใช้งาน

1. **ดาวน์โหลดและบันทึก:** คัดลอกสคริปต์ลงในไฟล์ `.bat` และบันทึก
2. **เรียกใช้สคริปต์:** ดับเบิลคลิกไฟล์ `.bat` เพื่อทำงาน
3. **ปฏิบัติตามคำแนะนำ:** กรอกข้อมูลที่ต้องการเมื่อได้รับการแจ้ง:
   - ชื่อเซิร์ฟเวอร์
   - เส้นทางไฟล์ (ผ่านกล่องโต้ตอบ)
   - PureMode
   - Game Build
   - IP และพอร์ต
4. **การสร้างทางลัด:** หลังจากกรอกข้อมูลครบถ้วน ทางลัดจะถูกสร้างบนเดสก์ท็อปด้วยชื่อที่คุณระบุ

## ตัวอย่าง

หากคุณเลือกไฟล์ `fiveM.exe`, เลือก `Pure_1`, และตั้งค่า build ของเกมเป็น `build_2060` พร้อม IP `127.0.0.1` และพอร์ต `30120`, สคริปต์จะสร้างทางลัดบนเดสก์ท็อปที่เรียกใช้ `fiveM.exe` ด้วยพารามิเตอร์ `-pure_1 -b2060 +connect 127.0.0.1:30120`

## การแก้ไขปัญหา

- **ไม่มีการเลือกไฟล์:** ตรวจสอบให้แน่ใจว่าคุณเลือกไฟล์เมื่อได้รับการแจ้ง
- **ตัวเลือกไม่ถูกต้อง:** ตรวจสอบให้แน่ใจว่าคุณป้อนตัวเลือกที่ถูกต้องสำหรับ PureMode, Game Build หรือ Custom Build
- **ปัญหาเซิร์ฟเวอร์ FiveM:** ตรวจสอบให้แน่ใจว่าเส้นทาง executable ของ FiveM และ IP/Port ถูกต้องและเซิร์ฟเวอร์ FiveM กำลังทำงาน

## หมายเหตุ

สคริปต์นี้ออกแบบมาเพื่ออำนวยความสะดวกในการเรียกใช้เซิร์ฟเวอร์ FiveM ด้วยการตั้งค่าแบบกำหนดเอง ตรวจสอบให้แน่ใจว่า executable ของ FiveM และ build ของเกมเข้ากันได้กับการตั้งค่าเซิร์ฟเวอร์ของคุณ
