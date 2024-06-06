for file in *; do
  if [ -f "$file" ]; then  # 파일인 경우에만 진행
    # 파일의 확장자 추출
    file_extension="${file##*.}"

    # 확장자가 "mp4"인지 확인
    if [ "$file_extension" = "mp4" ]; then
  	echo "$file 파일은 mp4 확장자를 가지고 있습니다."
    else
    #new_name="prefix_$file"  # 새로운 이름 규칙을 정의
    #mv "$file" "$new_name"  # 파일 이름 변경
    #echo "변경 전: $file, 변경 후: $new_name"  # 변경 내역 출력 (선택 사항)
    	convert -resize 1024X768 "$file" "$file"
    fi
  fi
done
