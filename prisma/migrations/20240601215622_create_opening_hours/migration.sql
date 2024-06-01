-- CreateEnum
CREATE TYPE "DayOfWeek" AS ENUM ('MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY', 'SATURDAY', 'SUNDAY');

-- CreateTable
CREATE TABLE "OperningHours" (
    "id" SERIAL NOT NULL,
    "restaurantId" INTEGER NOT NULL,
    "dayOfWeek" "DayOfWeek" NOT NULL,
    "openingTime" TIME NOT NULL,
    "closingTime" TIME NOT NULL,

    CONSTRAINT "OperningHours_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "OperningHours" ADD CONSTRAINT "OperningHours_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "Restaurant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
