import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/ticket_booking/ticket_booking_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/widgets.dart';
import 'provider/user_form_provider.dart';

class UserBookingPage extends HookConsumerWidget {
  const UserBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin khách'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Consumer(builder: (context, ref, _) {
                  final ticketBookingState = ref.watch(ticketBookingProvider);
                  final destination = ticketBookingState.destination;
                  return BoxDestination(
                    destination: destination,
                  );
                }),
              ),
              Expanded(
                child: ContainerLegend(
                  title: 'Thông tin cá nhân',
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Consumer(builder: (ctx, ref, _) {
                            final state = ref.watch(userFormProvider);
                            return FloatTextField(
                              initialValue: state.phone,
                              labelText: 'SDT',
                              keyboardType: TextInputType.number,
                              onChanged: (value) => ref
                                  .read(userFormProvider.notifier)
                                  .phoneChanged(value),
                              errorText: state.validatePhone,
                            );
                          }),
                          const SizedBox(height: 8),
                          Consumer(builder: (ctx, ref, _) {
                            final state = ref.watch(userFormProvider);
                            return FloatTextField(
                              initialValue: state.name,
                              labelText: 'Họ tên',
                              onChanged: (value) => ref
                                  .read(userFormProvider.notifier)
                                  .nameChanged(value),
                              errorText: state.validateName,
                            );
                          }),
                          const SizedBox(height: 8),
                          Consumer(builder: (ctx, ref, _) {
                            final state = ref.watch(userFormProvider);
                            return FloatTextField(
                              initialValue: state.startPoint,
                              labelText: 'Địa chỉ đón',
                              onChanged: (value) => ref
                                  .read(userFormProvider.notifier)
                                  .startPointChanged(value),
                              errorText: state.validateStartPoint,
                            );
                          }),
                          const SizedBox(height: 8),
                          Consumer(builder: (ctx, ref, _) {
                            final state = ref.watch(userFormProvider);

                            return FloatTextField(
                              initialValue: state.endPoint,
                              labelText: 'Điểm đến',
                              onChanged: (value) => ref
                                  .read(userFormProvider.notifier)
                                  .endPointChanged(value),
                              errorText: state.validateEndPoint,
                            );
                          }),
                          const SizedBox(height: 8),
                          Consumer(builder: (ctx, ref, _) {
                            final note = ref.watch(userFormProvider).note;
                            return FloatTextField(
                              initialValue: note,
                              maxLines: 3,
                              labelText: 'Ghi chú',
                              onChanged: (value) => ref
                                  .read(userFormProvider.notifier)
                                  .noteChanged(value),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  child: Consumer(builder: (ctx, ref, _) {
                    final isFormError = ref.watch(userFormProvider).isFormError;
                    return ElevatedButton(
                      child: const Text('Xác nhận'),
                      onPressed: isFormError
                          ? () {
                              context.router.push(const ConfirmBookingRoute());
                            }
                          : null,
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
