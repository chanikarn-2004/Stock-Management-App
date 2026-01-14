// src/items/items.module.ts
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Item } from './item.entity'; // << กล่องเครื่องมือเก็บ "เครื่องมือ" ของตัวเอง
import { ItemsController } from './items.controller'; // << กล่องเครื่องมือเก็บ "เครื่องมือ" ของตัวเอง
import { ItemsService } from './items.service'; // << กล่องเครื่องมือเก็บ "เครื่องมือ" ของตัวเอง

@Module({
  imports: [TypeOrmModule.forFeature([Item])], // บอกว่ากล่องนี้ใช้เครื่องมือ Item
  controllers: [ItemsController],
  providers: [ItemsService],
})
export class ItemsModule { }