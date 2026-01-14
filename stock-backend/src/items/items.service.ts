import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Item } from './item.entity';

@Injectable()
export class ItemsService {
    constructor(
        @InjectRepository(Item)
        private itemsRepository: Repository<Item>,
    ) { }

    /**
     * C = Create: สร้างข้อมูลสินค้าใหม่
     * @param item ข้อมูลสินค้าที่จะเพิ่ม
     * @returns ข้อมูลสินค้าที่ถูกสร้าง
     */
    create(item: Omit<Item, 'id'>): Promise<Item> {
        const newItem = this.itemsRepository.create(item);
        return this.itemsRepository.save(newItem);
    }

    /**
     * R = Read: ดึงข้อมูลสินค้าทั้งหมด
     * @returns รายการสินค้าทั้งหมด
     */
    findAll(): Promise<Item[]> {
        return this.itemsRepository.find();
    }

    /**
     * R = Read: ดึงข้อมูลสินค้าชิ้นเดียวตาม id
     * @param id ไอดีของสินค้า
     * @returns ข้อมูลสินค้าที่ตรงกับ id
     */
    async findOne(id: number): Promise<Item> {
        const item = await this.itemsRepository.findOneBy({ id });
        if (!item) {
            throw new NotFoundException(`Item with ID "${id}" not found`);
        }
        return item;
    }

    /**
     * U = Update: แก้ไขข้อมูลสินค้าตาม id
     * @param id ไอดีของสินค้าที่จะแก้ไข
     * @param updateItemDto ข้อมูลใหม่ของสินค้า
     * @returns ข้อมูลสินค้าที่ถูกแก้ไขแล้ว
     */
    async update(id: number, updateItemDto: Partial<Item>): Promise<Item> {
        const item = await this.findOne(id); // ตรวจสอบว่ามีข้อมูลนี้อยู่จริง
        Object.assign(item, updateItemDto);
        return this.itemsRepository.save(item);
    }

    /**
     * D = Delete: ลบข้อมูลสินค้าตาม id
     * @param id ไอดีของสินค้าที่จะลบ
     */
    async remove(id: number): Promise<void> {
        const result = await this.itemsRepository.delete(id);
        if (result.affected === 0) {
            throw new NotFoundException(`Item with ID "${id}" not found`);
        }
    }
}