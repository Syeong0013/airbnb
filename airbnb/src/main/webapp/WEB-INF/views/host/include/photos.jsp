<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="before_sel_pic">
	<div class="f_t_2">
		숙소 사진 추가하기
		<span class="subtitle">
		숙소 등록을 시작하려면 사진 5장을 제출하셔야 합니다. 나중에 추가하거나 변경하실 수 있습니다.
		</span>
	</div>
	<div class="drop_box">
		<svg viewBox="0 0 64 64" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 64px; width: 64px; fill: currentcolor;">
			<path d="M41.636 8.404l1.017 7.237 17.579 4.71a5 5 0 0 1 3.587 5.914l-.051.21-6.73 25.114A5.002 5.002 0 0 1 53 55.233V56a5 5 0 0 1-4.783 4.995L48 61H16a5 5 0 0 1-4.995-4.783L11 56V44.013l-1.69.239a5 5 0 0 1-5.612-4.042l-.034-.214L.045 14.25a5 5 0 0 1 4.041-5.612l.215-.035 31.688-4.454a5 5 0 0 1 5.647 4.256zm-20.49 39.373l-.14.131L13 55.914V56a3 3 0 0 0 2.824 2.995L16 59h21.42L25.149 47.812a3 3 0 0 0-4.004-.035zm16.501-9.903l-.139.136-9.417 9.778L40.387 59H48a3 3 0 0 0 2.995-2.824L51 56v-9.561l-9.3-8.556a3 3 0 0 0-4.053-.009zM53 34.614V53.19a3.003 3.003 0 0 0 2.054-1.944l.052-.174 2.475-9.235L53 34.614zM48 27H31.991c-.283.031-.571.032-.862 0H16a3 3 0 0 0-2.995 2.824L13 30v23.084l6.592-6.59a5 5 0 0 1 6.722-.318l.182.159.117.105 9.455-9.817a5 5 0 0 1 6.802-.374l.184.162L51 43.721V30a3 3 0 0 0-2.824-2.995L48 27zm-37 5.548l-5.363 7.118.007.052a3 3 0 0 0 3.388 2.553L11 41.994v-9.446zM25.18 15.954l-.05.169-2.38 8.876h5.336a4 4 0 1 1 6.955 0L48 25.001a5 5 0 0 1 4.995 4.783L53 30v.88l5.284 8.331 3.552-13.253a3 3 0 0 0-1.953-3.624l-.169-.05L28.804 14a3 3 0 0 0-3.623 1.953zM21 31a4 4 0 1 1 0 8 4 4 0 0 1 0-8zm0 2a2 2 0 1 0 0 4 2 2 0 0 0 0-4zM36.443 6.11l-.175.019-31.69 4.453a3 3 0 0 0-2.572 3.214l.02.175 3.217 22.894 5.833-7.74a5.002 5.002 0 0 1 4.707-4.12L16 25h4.68l2.519-9.395a5 5 0 0 1 5.913-3.587l.21.051 11.232 3.01-.898-6.397a3 3 0 0 0-3.213-2.573zm-6.811 16.395a2 2 0 0 0 1.64 2.496h.593a2 2 0 1 0-2.233-2.496zM10 13a4 4 0 1 1 0 8 4 4 0 0 1 0-8zm0 2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" fill="#222">
			</path>
		</svg>
		<div>여기로 사진을 끌어다 놓으세요.</div>
		<div>5장 이상의 사진을 선택하세요.</div>
<!-- 		<div class="upload_box"> -->
			<input id="host_pic_upload" type="file" name="photo" required="true" multiple="true" />
<!-- 		</div> -->
	</div>
</div>
<div class="after_sel_pic" style="display:none;">
	<div>
		<div class="f_t_2">
			어때요? 사진이 마음에 드시나요?
			<span class="subtitle">
				드래그하여 순서 변경
			</span>
			<input type="file" id="imgUpload" style="display:none;"></input>
			<label for="imgUpload">
				<span>+ 추가</span>
			</label>
		</div>
		<div class="drop_box">
			<div class='pic_area pic_main'>	
				사진 추가하기
			</div>
			<div class="pic_small_div">
				<div class='pic_area pic_small'>	
					사진 추가하기
				</div>
				<div class='pic_area pic_small'>	
					사진 추가하기
				</div>
				<div class='pic_area pic_small'>	
					사진 추가하기
				</div>
				<div class='pic_area pic_small'>	
					사진 추가하기
				</div>
			</div>
		</div>
	</div>
</div>