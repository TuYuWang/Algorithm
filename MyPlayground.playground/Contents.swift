//: Playground - noun: a place where people can play

import UIKit

//https://www.cnblogs.com/ludashi/p/6031379.html

var str = "Hello, playground"

//冒泡排序

/* 一种基础的排序算法，这种算法会重复的比较数组中相邻的两个元素。
 * 每一次比较都能找出未排序元素中最大或者最小的那个数字
 * 如果一个元素比另一个元素大(小)，那么就交换这两个元素的位置。
 * 重复这一比较直至最后一个元素。
 * 时间复杂度较高，效率较低的排序方法
 * 空间复杂度是O(n),最差时间复杂度O(n^2),平均时间复杂度O(n^2)
*/

var dataSource = [1, 2, 3, 6, 10, 7, 9, 20]

for i in 0..<dataSource.count {
    
    for j in 0..<dataSource.count - i - 1 {
        
        if dataSource[j] > dataSource[j+1] {
            
            let temp = dataSource[j]
            
            dataSource[j] = dataSource[j+1]
            
            dataSource[j+1] = temp
        }
    }
}

print(dataSource)

//选择排序

/* 不断从无序序列中选择最小的值放入到有序序列的最后的位置
 * 平均时间复杂度: O(n^2)
 * 平均空间复杂度: O(1)
 */

for i in 0..<dataSource.count {
    
    var j = i + 1
    var minValue = dataSource[i]
    var minIndex = i
    
    while j < dataSource.count {
        
        if minValue > dataSource[j] {
            
            minValue = dataSource[j]
            
            minIndex = j
        }
        
        j = j + 1
    }
    
    if minIndex != i {
        
        let temp = dataSource[i]
        
        dataSource[i] = dataSource[minIndex]
        
        dataSource[minIndex] = temp
    }
}

print(dataSource)

//插入排序

/* 取出无序数列中第一个值，插入到有序数列中相应的位置
 *
 */

for i in 1..<dataSource.count {
    
    var j = i
    
    while j > 0 {
        
        if dataSource[j] > dataSource[j - 1] {
            
            let temp = dataSource[j]
            
            dataSource[j] = dataSource[j - 1]
            
            dataSource[j - 1] = temp
            
            j = j - 1
            
        } else { break }
        
    }
    
}

print(dataSource)

//希尔排序

/* 插入排序的升级版
 * 缩小增量排序
 * 将无序序列按照一定的增量分为几组，分别将这几组中的数据通过插入排序的方式将其进行排序
 * 然后缩小增量分组，然后将组内的数据再次进行排序
 */
